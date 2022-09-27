-- Catch non-mountable conditions.
function MountRandomizer:CanPlayerMount()
    if IsMounted() then
        if not IsFlying() or MountRandomizerDB.dismountWhileFlying then
            Dismount()
        end
        return false
    end

    if not IsOutdoors() then
        print("[Mount Randomizer] Cannot summon mounts in this area.")
        return false
    end

    if UnitAffectingCombat("player") then
        print("[Mount Randomizer] Cannot summon mounts during combat.")
        return false
    end

    if IsFalling() then
        print("[Mount Randomizer] Cannot summon mounts while falling. Good luck.")
        return false
    end

    if UnitIsDeadOrGhost("player") then
        print("[Mount Randomizer] You're dead.")
        return false
    end

    -- TODO: https://github.com/austen0/MountRandomizer/issues/1
    -- if GetShapeshiftFormID() ~= nil then
    --     print("[MountRandomizer] Cannot summon mounts while shapeshifted.")
    --     return false
    -- end

    if GetNumCompanions("MOUNT") == 0 then
        print("[MountRandomizer] Your mount journal is empty.")
        return false
    end


    if self.GetSkillRank("Riding") == 0 then
        print("[MountRandomizer] You are not trained in riding.")
        return false
    end

    return true
end

-- Summon a randomly selected mount.
function MountRandomizer:RandMount()
    if not self:CanPlayerMount() then
        return
    end
    
    -- Prep query against mount pool based on current player context.
    local summonQuery = {
        preferredType = "Ground",
        trainedProfessions = {},
        ownedMounts = {},
    }

    if IsSwimming() then
        summonQuery.preferredType = "Water"
    elseif IsFlyableArea() then
        if MountRandomizer.GetPlayerContinent() ~= "Northrend" or IsSpellKnown(54197) then
            summonQuery.preferredType = "Flying"
        end
    end 

    if self.GetSkillRank("Engineering") > 0 then
        table.insert(summonQuery.trainedProfessions, "Engineering")
    end
    if self.GetSkillRank("Tailoring") > 0 then
        table.insert(summonQuery.trainedProfessions, "Tailoring")
    end

    for journalIndex = 1, GetNumCompanions("MOUNT"), 1 do
        local npcID = GetCompanionInfo("MOUNT", journalIndex)
        table.insert(summonQuery.ownedMounts, npcID)
    end

    local summonPool = self.mountDB:Query(summonQuery)
    if summonPool == nil then
        return
    end

    -- Randomly select a mount from the filtered pool and summon it.
    local poolLength = self.GetTableLength(summonPool)
    if poolLength < 1 then
        print("[MountRandomizer] No eligible mounts to summon. Check your settings.")
        return
    end
    local summonIDX = math.random(poolLength)
    local summonID = summonPool[summonIDX].npcID
    for journalIndex = 1, GetNumCompanions("MOUNT"), 1 do
        local npcID = GetCompanionInfo("MOUNT", journalIndex)
        if npcID == summonID then
            CallCompanion("MOUNT", journalIndex)
            break
        end
    end
end

local function SlashHandler(msg, editbox)
    MountRandomizer:RandMount()
end

-- Register a slash commands.
SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = SlashHandler;

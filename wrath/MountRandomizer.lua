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
function MountRandomizer:RandMount(forcedType)
    if not self:CanPlayerMount() then
        return
    end
    
    -- Prep query against mount pool based on current player context.
    local summonQuery = {
        preferredType = MountRandomizer.IfNil("Ground", forcedType),
        trainedProfessions = {},
        ownedMounts = {},
    }

    if IsSwimming() and forcedType == nil then
        summonQuery.preferredType = "Water"
    elseif IsFlyableArea() and forcedType == nil then
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

-- Print any mounts in journal that are not matched in the mountDB.
function MountRandomizer:PrintUnknownMounts()
    print("[MountRandomizer] Printing unknown mounts in journal...")
    for journalIndex = 1, GetNumCompanions("MOUNT"), 1 do
        local npcID, npcName = GetCompanionInfo("MOUNT", journalIndex)
        local matched = false
        for _, mount in pairs(self.mountDB.dbFull) do
            if npcID == mount.npcID then
                matched = true
                break
            end
        end
        if not matched then
            print(npcName, "("..npcID..")")
        end
    end
    print("[MountRandomizer] Operation complete.")
end

-- Add a mount to the user blacklist.
function MountRandomizer:BlacklistMount(npcID)
    local mountName
    for _, mount in pairs(self.mountDB.dbFull) do
        if npcID == mount.npcID then
            mountName = mount.name
            break
        end
    end
    if mountName == nil then
        print("[MountRandomizer] Mount not recognized, no action taken.")
    elseif self.InTable(MountRandomizerDB.mountBlacklist, npcID) then
        print("[MountRandomizer] Mount already in blacklist:", mountName)
    else
        table.insert(MountRandomizerDB.mountBlacklist, npcID)
        print("[MountRandomizer] Added mount to blacklist:", mountName)
    end
end

-- Add a mount to the user blacklist.
function MountRandomizer:RemoveMountFromBlacklist(npcID)
    local mountName
    for _, mount in pairs(self.mountDB.dbFull) do
        if npcID == mount.npcID then
            mountName = mount.name
            break
        end
    end
    if mountName == nil then
        print("[MountRandomizer] Mount not recognized, no action taken.")
    elseif not self.InTable(MountRandomizerDB.mountBlacklist, npcID) then
        print("[MountRandomizer] Mount not on blacklist:", mountName)
    else
        local newBlacklist = {}
        for _, mountID in pairs(MountRandomizerDB.mountBlacklist) do
            if mountID ~= npcID then
                table.insert(newBlacklist, mountID)
            end
        end
        MountRandomizerDB.mountBlacklist = newBlacklist
        print("[MountRandomizer] Removed mount from blacklist:", mountName)
    end
end

local function SlashHandler(msg, editbox)
    if msg == "" then
        MountRandomizer:RandMount()
    elseif msg == "ground" then
        MountRandomizer:RandMount("Ground")
    elseif msg == "flying" then
        MountRandomizer:RandMount("Flying")
    elseif msg == "water" then
        MountRandomizer:RandMount("Water")
    elseif msg == "printunknown" then
        MountRandomizer:PrintUnknownMounts()
    else
        print("[MountRandomizer] ERROR: Unknown argument.")
        print("[MountRandomizer] Valid args: ground, flying, water, printunknown")
    end
end

-- Register a slash commands.
SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = SlashHandler;

-- Iterate through mount journal and identify type. Return a mapping of mount journal index to
-- required riding skill.
function MountRandomizer:MakeMountPool()
    local mountPool = {}
    local mountPoolCounts = {
        apprentice = 0,
        journeyman = 0,
        expert = 0,
        master = 0,
        unknown = 0,
    }
    for idx = 1, GetNumCompanions("MOUNT"), 1 do
        local creatureID, creatureName, creatureSpellID = GetCompanionInfo("MOUNT", idx)
        local mountType
        if self.InTable(self.lookupTables.expertSpellIDs, creatureSpellID) then
            mountType = "expert"
        elseif self.InTable(self.lookupTables.masterSpellIDs, creatureSpellID) then
            mountType = "master"
        elseif self.InTable(self.lookupTables.apprenticeSpellIDs, creatureSpellID) then
            mountType = "apprentice"
        elseif self.InTable(self.lookupTables.journeymanSpellIDs, creatureSpellID) then
            mountType = "journeyman"
        else
            mountType = "unknown"
        end
        mountPool[idx] = mountType
        mountPoolCounts[mountType] = mountPoolCounts[mountType] + 1
    end
    return mountPool, mountPoolCounts
end

-- Summon a randomly selected mount.
function MountRandomizer:RandMount()
    local db = MountRandomizerDB

    local ridingSkill = self.GetSkillRank("Riding")

    -- If not trained in riding, stop execution.
    if ridingSkill == 0 then
        print("[MountRandomizer] You are not trained in riding.")
        return
    end

    -- If mount journal is empty, stop execution.
    if GetNumCompanions("MOUNT") == 0 then
        print("[MountRandomizer] Your mount journal is empty.")
        return
    end

    -- If not in mountable area, send log and stop execution.
    if not IsOutdoors() then
        print("[Mount Randomizer] Cannot summon mounts in this area.")
        return
    end

    -- If not alive, send log and stop execution.
    if UnitIsDeadOrGhost("player") then
        print("[Mount Randomizer] You're dead.")
        return
    end

    -- If already mounted, dismount and stop execution.
    if IsMounted() then
        if not IsFlying() or db.dismountWhileFlying then
            Dismount()
        end
        return
    end
    
    -- Categorize all mounts in journal.
    local mountPool, mountPoolCounts = self:MakeMountPool()

    -- Figure out which mounts to summon from based on skill level, flyable area, etc.
    local summonPool = {}
    if
        IsFlyableArea()
        and ridingSkill >= 225
        and self.InTable({"expert", "both"}, db.flyingMountTypes)
        and mountPoolCounts.expert > 0
    then
        for k, v in pairs(mountPool) do
            if v == "expert" then
                table.insert(summonPool, k)
            end
        end
    end
    if
        IsFlyableArea()
        and ridingSkill >= 300
        and self.InTable({"master", "both"}, db.flyingMountTypes)
        and mountPoolCounts.master > 0
    then
        for k, v in pairs(mountPool) do
            if v == "master" then
                table.insert(summonPool, k)
            end
        end
    end
    if
        (not IsFlyableArea() or ridingSkill < 225)
        and ridingSkill >= 150
        and self.InTable({"journeyman", "both"}, db.groundMountTypes)
        and mountPoolCounts.journeyman > 0
    then
        for k, v in pairs(mountPool) do
            if v == "journeyman" then
                table.insert(summonPool, k)
            end
        end
    end
    if
        (not IsFlyableArea() or ridingSkill < 225)
        and self.InTable({"apprentice", "both"}, db.groundMountTypes)
        and mountPoolCounts.apprentice > 0
    then
        for k, v in pairs(mountPool) do
            if v == "apprentice" then
                table.insert(summonPool, k)
            end
        end
    end

    
    -- Randomly select a mount from the filtered pool and summon it.
    local poolLength = self.GetTableLength(summonPool)
    if poolLength == 0 then
        print("[Mount Randomizer] No eligible mounts found. This is probably an addon error.")
        return
    end
    local summonIDX = math.random(poolLength)
    CallCompanion("MOUNT", summonPool[summonIDX])
end

local function SlashHandler(msg, editbox)
    MountRandomizer:RandMount()
end

-- Register a slash commands.
SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = SlashHandler;

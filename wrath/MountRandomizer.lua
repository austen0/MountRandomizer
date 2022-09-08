-- Search array for given value.
local function InTable(t, val)
    for _, arrVal in pairs(t) do
        if arrVal == val then
            return true
        end
    end
    return false
end

-- Get table length.
local function GetTableLength(t)
  local count = 0
  for _ in pairs(t) do count = count + 1 end
  return count
end

-- Iterate through mount journal and identify type. Return a mapping of mount journal index to
-- required riding skill.
local function MakeMountPool()
    local ldb = MountRandomizerLookupTablesDB
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
        if InTable(ldb.expertSpellIDs, creatureSpellID) then
            mountType = "expert"
        elseif InTable(ldb.masterSpellIDs, creatureSpellID) then
            mountType = "master"
        elseif InTable(ldb.apprenticeSpellIDs, creatureSpellID) then
            mountType = "apprentice"
        elseif InTable(ldb.journeymanSpellIDs, creatureSpellID) then
            mountType = "journeyman"
        else
            mountType = "unknown"
        end
        mountPool[idx] = mountType
        mountPoolCounts[mountType] = mountPoolCounts[mountType] + 1
    end
    return mountPool, mountPoolCounts
end

-- Iterate through the skill list and return the riding skill rank.
local function GetRidingSkill()
    for i = 1, GetNumSkillLines() do
        local skillName, isHeader, isExpanded, skillRank = GetSkillLineInfo(i)
        if skillName == "Riding" then
            return skillRank
        end
    end
    return 0
end

function RandMount(msg, editbox)
    local db = MountRandomizerDB
    local ridingSkill = GetRidingSkill()

    -- If not trained in riding, stop execution.
    if ridingSkill == 0 then
        print("[MountRandomizer] You are not trained in riding.")
    end

    -- If mount journal is empty, stop execution.
    if GetNumCompanions("MOUNT") == 0 then
        print("[MountRandomizer] Your mount journal is empty.")
    end

    -- If not in mountable area, send log and stop execution.
    if not IsOutdoors() then
        print("[Mount Randomizer] Cannot summon mounts in this area.")
        return
    end

    -- If already mounted, dismount and stop execution.
    if IsMounted() then
        if (not IsFlying()) or db.dismountWhileFlying then
            Dismount()
        end
        return
    end
    
    -- Categorize all mounts in journal.
    local mountPool, mountPoolCounts = MakeMountPool()

    -- Figure out which mounts to summon from based on skill level, flyable area, etc.
    local summonPool = {}
    if
        IsFlyableArea()
        and ridingSkill >= 225
        and InTable({"expert", "both"}, db.flyingMountTypes)
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
        and InTable({"master", "both"}, db.flyingMountTypes)
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
        and InTable({"journeyman", "both"}, db.groundMountTypes)
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
        and InTable({"apprentice", "both"}, db.groundMountTypes)
        and mountPoolCounts.apprentice > 0
    then
        for k, v in pairs(mountPool) do
            if v == "apprentice" then
                table.insert(summonPool, k)
            end
        end
    end

    
    local poolLength = GetTableLength(summonPool)
    if poolLength == 0 then
        print("[Mount Randomizer] No eligible mounts found. This is probably an addon error.")
        return
    end
    local summonIDX = math.random(poolLength)
    CallCompanion("MOUNT", summonPool[summonIDX])
end

-- Register a slash command for RandMount()
SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = RandMount;

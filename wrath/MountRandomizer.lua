function RandMount(msg, editbox)
	local db = MountRandomizerDB
	local ldb = MountRandomizerLookupTablesDB

	-- If already mounted, dismount and stop execution.
	if IsMounted() then
		Dismount()
		return
	end
	
	-- If not in mountable area, send log and stop execution.
	if not IsOutdoors() then
		print("[Mount Randomizer] Cannot summon mounts in this area.")
		return
	end
	
	-- Create a list of spell ids that mount journal entries will be checked against based on user
	-- settings.
	local gTypes = db.groundMountTypes
	local fTypes = db.flyingMountTypes
	local mountSpellPool = {}
	if (gTypes == "apprentice" or gTypes == "both") and not IsFlyableArea() then
		for _, spellID in pairs(ldb.apprenticeSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (gTypes == "journeyman" or gTypes == "both") and not IsFlyableArea() then
		for _, spellID in pairs(ldb.journeymanSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (fTypes == "expert" or fTypes == "both") and IsFlyableArea() then
		for _, spellID in pairs(ldb.expertSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (fTypes == "master" or fTypes == "both") and IsFlyableArea() then
		for _, spellID in pairs(ldb.masterSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	
	-- Iterate through user mounts and check spell ID against the list created in previous step.
	local mountPool = {}
	for idx = 1, GetNumCompanions("MOUNT"), 1 do
		local creatureID, creatureName, creatureSpellID = GetCompanionInfo("MOUNT", idx)
		for _, mountSpellID in pairs(mountSpellPool) do
			if creatureSpellID == mountSpellID then
				table.insert(mountPool, idx)
			end
		end
	end
	
	-- Get the length of the table because lua is a dumbass language that apparently doesn't have
	-- a builtin for this. If empty, print error message and stop execution.
	local mountPoolLength = 0
	for i, _ in pairs(mountPool) do
		mountPoolLength = i
	end
	if mountPoolLength < 1 then
		print("[Mount Randomizer] No eligible mounts found, cannot summon.")
		return
	end
	
	-- Select random mount index (eligible mounts) and summon.
	local summonIDX = math.random(mountPoolLength)
	CallCompanion("MOUNT", mountPool[summonIDX])
end

-- Register a slash command for RandMount()
SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = RandMount;

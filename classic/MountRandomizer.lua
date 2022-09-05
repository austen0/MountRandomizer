-- Reference lists of summoning spell IDs for the various mount types.

local apprenticeSpellIDs = {
	458, 459, 468, 470, 471, 472, 578, 579, 580, 581, 6648, 6653, 6654, 6777, 6896, 6897, 6898,
	6899, 8394, 8395, 8396, 8980, 10787, 10788, 10789, 10790, 10792, 10793, 10795, 10796, 10798,
	10799, 10800, 10801, 10802, 10803, 10804, 10873, 10969, 15780, 15781, 16058, 16059, 16060,
	17453, 17454, 17455, 17456, 17458, 17462, 17463, 17464, 18363, 18989, 18990, 25858, 25859,
	30174, 32420, 33630, 34406, 34795, 35018, 35020, 35022, 35710, 35711, 42776, 43899, 45177,
	47977, 48023, 48024, 49378, 50869, 50870, 51617, 51621, 58615, 64657, 64658, 64681, 64731,
	64749, 64761, 64762, 64977, 66847, 68768, 68769, 71342, 72284, 74854, 74855, 74856, 348459,
	372677, 387320};

local journeymanSpellIDs = {
	15779, 16055, 16056, 16080, 16081, 16082, 16084, 17229, 17450, 17459, 17460, 17461, 17465,
	18991, 18992, 22717, 22718, 22719, 22720, 22721, 22722, 22723, 22724, 23219, 23220, 23221,
	23227, 23228, 23229, 23238, 23239, 23240, 23241, 23242, 23243, 23246, 23247, 23248, 23249,
	23250, 23251, 23252, 23338, 23509, 23510, 24576, 25863, 26655, 26656, 28828, 29059, 31700,
	33660, 34068, 34407, 34790, 34896, 34897, 34898, 34899, 35025, 35027, 35028, 35712, 35713,
	35714, 39315, 39316, 39317, 39318, 39319, 39450, 42777, 43688, 43810, 43900, 46980, 47037,
	48027, 48778, 48954, 49322, 49379, 50281, 51412, 54753, 55293, 58819, 59572, 59573, 59785,
	59788, 59791, 59793, 59797, 59799, 59802, 59804, 60114, 60116, 60118, 60119, 60136, 60140,
	63232, 63635, 63636, 63637, 63638, 63639, 63640, 63641, 63642, 63643, 64656, 64659, 65637,
	65638, 65639, 65640, 65641, 65642, 65643, 65644, 65645, 65646, 65917, 66090, 66091, 66122,
	66123, 66124, 66846, 67466, 68056, 68057, 68187, 68188, 73313, 74918, 387308, 387319, 387321};

local expertSpellIDs = {3363, 32235, 32239, 32240, 32243, 32244, 32245};

local masterSpellIDs = {
	32242, 32246, 32289, 32290, 32292, 32295, 32296, 32297, 32345, 37015, 39798, 39800, 39801,
	39802, 39803, 39949, 40192, 40212, 41513, 41514, 41515, 41516, 41517, 41518, 43927, 44317,
	44744, 49193, 51960, 59567, 59568, 59569, 59570, 59571, 59650, 59961, 59976, 59996, 60002,
	60021, 60024, 60025, 61229, 61230, 61294, 61996, 61997, 62048, 63796, 63844, 63956, 63963,
	64927, 65439, 66087, 66088, 67336, 69395, 71810, 72807, 72808};

-- Set up interface options panel for addon.

local f = CreateFrame("Frame")
f.defaults = {
	groundMountTypes = "journeyman",
	flyingMountTypes = "master",
};

function f:OnEvent(event, addOnName)
	if addOnName == "MountRandomizer" then
		MountRandomizerDB = MountRandomizerDB or CopyTable(self.defaults)
		self.db = MountRandomizerDB
		self:SetupOptions()
	end
end

f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)

function f:SetupOptions()
	self.panel = CreateFrame("Frame")
	self.panel.name = "MountRandomizer"

	local info = {}
	local groundMountTypesDropdown = CreateFrame("Frame", "GroundMountTypesDropdown", self.panel, "UIDropDownMenuTemplate")
	groundMountTypesDropdown:SetPoint("TOPLEFT", 20, -20)
	groundMountTypesDropdown.initialize = function()
		wipe(info)
		local mountTypes = {"apprentice", "journeyman", "both"}
		for _, mountType in pairs(mountTypes) do
			info.text = mountType
			info.value = mountType
			info.func = function(self)
				MountRandomizerDB.groundMountTypes = self.value
				GroundMountTypesDropdownText:SetText(self:GetText())
			end
			info.checked = (info.value == MountRandomizerDB.groundMountTypes)
			UIDropDownMenu_AddButton(info)
		end
	end
	GroundMountTypesDropdownText:SetText("Ground Mount Types")
	
	local flyingMountTypesDropdown = CreateFrame("Frame", "FlyingMountTypesDropdown", self.panel, "UIDropDownMenuTemplate")
	flyingMountTypesDropdown:SetPoint("TOPLEFT", 20, -50)
	flyingMountTypesDropdown.initialize = function()
		wipe(info)
		local mountTypes = {"expert", "master", "both"}
		for _, mountType in pairs(mountTypes) do
			info.text = mountType
			info.value = mountType
			info.func = function(self)
				MountRandomizerDB.flyingMountTypes = self.value
				FlyingMountTypesDropdownText:SetText(self:GetText())
			end
			info.checked = (info.value == MountRandomizerDB.flyingMountTypes)
			UIDropDownMenu_AddButton(info)
		end
	end
	FlyingMountTypesDropdownText:SetText("Flying Mount Types")
	
	InterfaceOptions_AddCategory(self.panel)
end

local function RandMount(msg, editbox)
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
	local gTypes = MountRandomizerDB.groundMountTypes
	local fTypes = MountRandomizerDB.flyingMountTypes
	local mountSpellPool = {}
	if (gTypes == "apprentice" or gTypes == "both") and not IsFlyableArea() then
		for _, spellID in pairs(apprenticeSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (gTypes == "journeyman" or gTypes == "both") and not IsFlyableArea() then
		for _, spellID in pairs(journeymanSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (fTypes == "expert" or fTypes == "both") and IsFlyableArea() then
		for _, spellID in pairs(expertSpellIDs) do
			table.insert(mountSpellPool, spellID)
		end
	end
	if (fTypes == "master" or fTypes == "both") and IsFlyableArea() then
		for _, spellID in pairs(masterSpellIDs) do
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

SLASH_RANDMOUNT1 = '/randmount';
SlashCmdList["RANDMOUNT"] = RandMount;

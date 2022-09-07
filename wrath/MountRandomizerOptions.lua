-- Create top-level frame for addon interface options and define default values.
local f = CreateFrame("Frame")
f.defaults = {
	groundMountTypes = "journeyman",
	flyingMountTypes = "master",
	dismountWhileFlying = false,
};

-- Initialize user options db after addon has loaded.
function f:OnEvent(event, addOnName)
	if addOnName == "MountRandomizer" then
		if not MountRandomizerDB then
			MountRandomizerDB = CopyTable(self.defaults)
		else
			for k, v in pairs(self.defaults) do
				if MountRandomizerDB[k] == nil then
					MountRandomizerDB[k] = v
				end
			end
		end
		self.db = MountRandomizerDB
		self:SetupOptions()
	end
end

-- Catch addon load events and pass to init function.
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)

-- Populate addon options frame.
-- TODO(austen0): can/should this be local?
function f:SetupOptions()
	self.panel = CreateFrame("Frame")
	self.panel.name = "MountRandomizer"
	local info = {}

    -- Create dropdown for selecting which ground mount types to summon from (eg.
	-- apprentice/journeyman/both).
	local groundMountTypesDropdown = CreateFrame(
		"Frame", "GroundMountTypesDropdown", self.panel, "UIDropDownMenuTemplate")
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
	
    -- Create dropdown for selecting which flying mount types to summon from (eg.
	-- expert/master/both).
	local flyingMountTypesDropdown = CreateFrame(
		"Frame", "FlyingMountTypesDropdown", self.panel, "UIDropDownMenuTemplate")
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

	-- Create a checkbox to allow toggling whether the addon will dismount during flight if run
	-- when a mount is already summoned.
	local dismountWhileFlyingCheckbox = CreateFrame(
		"CheckButton",
		"DismountWhileFlyingCheckbox",
		self.panel,
		"InterfaceOptionsCheckButtonTemplate")
	dismountWhileFlyingCheckbox:SetPoint("TOPLEFT", 20, -80)
	dismountWhileFlyingCheckbox:SetScript("OnClick", function(self)
		MountRandomizerDB.dismountWhileFlying = self:GetChecked()
	end)
	DismountWhileFlyingCheckboxText:SetText("Dismount while flying")
	dismountWhileFlyingCheckbox:SetChecked(MountRandomizerDB.dismountWhileFlying)

    -- Add MountRandomizer panel to the interface options window.
	InterfaceOptions_AddCategory(self.panel)
end

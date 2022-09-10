MountRandomizer = {
    defaultSettings = {
        groundMountTypes = "journeyman",
        flyingMountTypes = "master",
        dismountWhileFlying = false,
    },
}

------------------------------------ LUA HELPER FUNCTIONS ------------------------------------------

-- Search array for given value.
function MountRandomizer.InTable(t, val)
    for _, arrVal in pairs(t) do
        if arrVal == val then
            return true
        end
    end
    return false
end

-- Get table length.
function MountRandomizer.GetTableLength(t)
  local count = 0
  for _ in pairs(t) do count = count + 1 end
  return count
end

------------------------------------ WOW HELPER FUNCTIONS ------------------------------------------

-- Iterate through the skill list and return the riding skill rank.
function MountRandomizer.GetSkillRank(skill)
    for i = 1, GetNumSkillLines() do
        local skillName, isHeader, isExpanded, skillRank = GetSkillLineInfo(i)
        if skillName == skill then
            return skillRank
        end
    end
    return 0
end

------------------------------------ OPTIONS PANEL CREATION ----------------------------------------

local f = CreateFrame("Frame")

-- Initialize user options db after addon has loaded.
function f:OnEvent(event, addOnName)
    if addOnName == "MountRandomizer" then
        if not MountRandomizerDB then
            MountRandomizerDB = CopyTable(MountRandomizer.defaultSettings)
        else
            for k, v in pairs(MountRandomizer.defaultSettings) do
                if MountRandomizerDB[k] == nil then
                    MountRandomizerDB[k] = v
                end
            end
        end
        self:SetupOptions()
    end
end

-- Catch addon load events and pass to init function.
f:RegisterEvent("ADDON_LOADED")
f:SetScript("OnEvent", f.OnEvent)

-- Populate addon options frame.
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

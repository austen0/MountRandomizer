MountRandomizer = {
    defaultSettings = {
        flyingMountTypes = "master",
        dismountWhileFlying = false,
        minGroundSpeed = 1.6,
        minFlyingSpeed = 2.5,
    },
}

------------------------------------ LUA HELPER FUNCTIONS ------------------------------------------

-- Search array for given value.
function MountRandomizer.InTable(t, val)
    for _, tVal in pairs(t) do
        if tVal == val then
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

function MountRandomizer.GetPlayerContinent()
    local mapID = C_Map.GetBestMapForUnit("player")
    local currMapType
    while currMapType ~= 2 do
        local mapInfo = C_Map.GetMapInfo(mapID)
        currMapType = mapInfo.mapType
        if currMapType < 2 then
            print("[MountRandomizer] Unable to determine player continent.")
        end
        if mapInfo.mapType == 2 then
            return mapInfo.name
        end
        mapID = mapInfo.parentMapID
    end
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

    -- Create dropdown for selecting the minimum speed of a ground mount to include in summon pool.
    local minGroundSpeedDropdown = CreateFrame(
        "Frame", "MinGroundSpeedDropdown", self.panel, "UIDropDownMenuTemplate")
    UIDropDownMenu_SetWidth(minGroundSpeedDropdown, 200)
    minGroundSpeedDropdown:SetPoint("TOPLEFT", 0, -20)
    minGroundSpeedDropdown.initialize = function()
        wipe(info)
        local options = {
            {text = "+60%", value = 1.6},
            {text = "+100%", value = 2},
        }
        for _, option in pairs(options) do
            info.text = option.text 
            info.value = option.value
            info.func = function(self)
                MountRandomizerDB.minGroundSpeed = self.value
                MinGroundSpeedDropdownText:SetText(self:GetText())
            end
            info.checked = (info.value == MountRandomizerDB.minGroundSpeed)
            UIDropDownMenu_AddButton(info)
        end
    end
    MinGroundSpeedDropdownText:SetText("Minimum Ground Mount Speed")

    -- Create dropdown for selecting the minimum speed of a ground mount to include in summon pool.
    local minFlyingSpeedDropdown = CreateFrame(
        "Frame", "MinFlyingSpeedDropdown", self.panel, "UIDropDownMenuTemplate")
    UIDropDownMenu_SetWidth(minFlyingSpeedDropdown, 200)
    minFlyingSpeedDropdown:SetPoint("TOPLEFT", "MinGroundSpeedDropdown", "BOTTOMLEFT", 0, -5)
    minFlyingSpeedDropdown.initialize = function()
        wipe(info)
        local options = {
            {text = "+150%", value = 2.5},
            {text = "+280%", value = 3.8},
            {text = "+310%", value = 4.1},
        }
        for _, option in pairs(options) do
            info.text = option.text 
            info.value = option.value
            info.func = function(self)
                MountRandomizerDB.minFlyingSpeed = self.value
                MinFlyingSpeedDropdownText:SetText(self:GetText())
            end
            info.checked = (info.value == MountRandomizerDB.minFlyingSpeed)
            UIDropDownMenu_AddButton(info)
        end
    end
    MinFlyingSpeedDropdownText:SetText("Minimum Flying Mount Speed")
    
    -- Create a checkbox to allow toggling whether the addon will dismount during flight if run
    -- when a mount is already summoned.
    local dismountWhileFlyingCheckbox = CreateFrame(
        "CheckButton",
        "DismountWhileFlyingCheckbox",
        self.panel,
        "InterfaceOptionsCheckButtonTemplate")
    dismountWhileFlyingCheckbox:SetPoint("TOPLEFT", "MinFlyingSpeedDropdown", "BOTTOMLEFT", 18, -5)
    dismountWhileFlyingCheckbox:SetScript("OnClick", function(self)
        MountRandomizerDB.dismountWhileFlying = self:GetChecked()
    end)
    DismountWhileFlyingCheckboxText:SetText("Dismount while flying")
    dismountWhileFlyingCheckbox:SetChecked(MountRandomizerDB.dismountWhileFlying)

    -- Create a button that will automatically create a macro that executes /randmount.
    local createMacroButton = CreateFrame(
        "Button",
        "CreateMacroButton",
         self.panel,
         "UIPanelButtonTemplate")
	createMacroButton:SetPoint("TOPLEFT", "DismountWhileFlyingCheckbox", "BOTTOMLEFT", 0, -5)
    createMacroButton:SetText("Create /randmount macro")
	createMacroButton:SetWidth(175)
	createMacroButton:SetScript("OnClick", function()
        if GetMacroIndexByName("RandMount") == 0 then
            CreateMacro("RandMount", 132238, "/randmount")
            print("[MountRandomizer] Macro created.")
        else
            print("[MountRandomizer] RandMount macro already exists, no changes made.")
        end
	end)

    -- Add MountRandomizer panel to the interface options window.
    InterfaceOptions_AddCategory(self.panel)
end

# MountRandomizer
World of Warcraft add-on for summoning random mounts. The appropriate mount type
(ground/flying/water) is automatically determined based on zone and other factors.

## Usage Instructions

### Setup

1.  Install from [GitHub releases](https://github.com/austen0/MountRandomizer/releases/latest) or
    [Curse](https://www.curseforge.com/wow/addons/mountrandomizer).
1.  Configure in the Interface Options:
    ![interface options](img/interface_options.png)
1.  Set up keybindings.
    ![keybindings](img/keybindings.png)
1.  Create a macro to call from your action bars.
    -   `/randmount <ground|flying|water>` to force summon a specific type.

### Blacklisting Mounts

To add a mount to the blacklist and prevent it from being summoned:
-   `/run MountRandomizer:BlacklistMount(<npc id>)`

For example, to blacklist the TBC boosty mount:
-   `/run MountRandomizer:BlacklistMount(176708)`

If you want to remove it from the blacklist:
-   `/run MountRandomizer:RemoveMountFromBlacklist(176708)`

## Known Issues

-   Does not cancel shapeshift for druids. Changing form is a protected function, so implementing
    this functionality is infeasible. Recommendation is to add `/cancelform [nocombat]` prior to
    `/randmount` in the macro.

## TODO for v1.0

- [x] upload to curse
- [x] handle cold-weather flying
- [x] handle water mounts
- [x] set up automatic packaging workflow
- [x] handle profession-specific mounts
- [x] move `creatureSpellID` lookup tables to separate file
- [x] fall back on ground mounts if journal has no flying mounts while in flyable area
- [x] improve handling of empty mount journal
- [x] clean up redundant syntax, especially around population of `mountSpellPool`
- [x] improve interface options panel
    - [x] add button to print out mounts that are not found in lookup tables (use
          `/randmount printunknown`)
    - [x] add button to automatically create a macro for invoking from action bar
    - [x] correct size of dropdown lists
    - [x] add option for whether character should dismount while currently flying

## v1.0+ Potential Features

- [ ] weighting system to make favored mounts more likely to be selected
- [ ] weakaura creation:
    - [ ] party mount
    - [ ] party follow
- [ ] additional mount types/cases
    - [ ] handle AQ mounts
    - [ ] handle loaned flying mounts in northrend
- [ ] add debugging
- [ ] make localization-friendly
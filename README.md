# MountRandomizer
World of Warcraft add-on for summoning random mounts.

## Pre-Release Usage Instructions
1.  Unzip to `...\World of Warcraft\_classic_\Interface\AddOns\`.
1.  Which type (eg. apprentice/journeyman/expert/master) of mounts to randomly summon from can be
    set in the interface options.
    -   By default, only very fast mounts will be summoned for ground and flying.
    -   Flying mounts are always summoned when able.
1.  Create a macro that calls `/randmount` and add to action bar (can also just be invoked from
    chat).

## TODO for v1.0

- [ ] handle water mounts
- [ ] add debugging
    - [ ] implement optional execution logging
    - [ ] create function to print out mounts that are not found in lookup tables
- [ ] improve interface options panel
    - [ ] add tooltip text
    - [ ] correct size of dropdown lists
    - [ ] add button to automatically create a macro for invoking from action bar
    - [x] add option for whether character should dismount while currently flying
- [ ] set up automatic packaging workflow
- [ ] upload to curse
- [x] handle profession-specific mounts
- [x] move `creatureSpellID` lookup tables to separate file
- [x] fall back on ground mounts if journal has no flying mounts while in flyable area
- [x] improve handling of empty mount journal
- [x] clean up redundant syntax, especially around population of `mountSpellPool`

# DOOMEternal Autosplitter

You have to give a big thanks to Micrologist for his awesome work!  
And thanks to Undeceiver for writing the Hidden Combat Rating portion of the ASL.

 - [Unlocking Console Commands](#unlocking-console-commands)
 - [Updating the Autosplitter](#updating-the-autosplitter)
   - [Level Name](#level-name)
     - [List of Level Names](#list-of-level-names)
   - [Load Removal](#load-removal)
     - [isLoading and isLoading2](#isloading-and-isloading2)
     - [isInGame](#isingame)
   - [Cutscene ID](#cutscene-id)
   - [Can Move](#can-move)
   - [Combat Rating](#combat-rating)
   - [Finding the Module Size](#finding-the-module-size)

### Unlocking Console Commands

To unlock the console, you can use [meath00k](https://github.com/brongo/m3337ho0o0ok/releases "meath00k Repository - Releases").  
To install, just paste the `XINPUT1_3.dll` into the same folder as `DOOMEternalx64vk.exe`.

Unlocking the console enables useful commands to help in updating the ASL. Even includes `noclip`.

## Updating the Autosplitter

To update the autosplitter for a new version, all you need to do is find the relevant pointer addresses in memory and add them in a new state block, add in any updated Cutscene IDs if they have changed from a previous version, and add the new module size along with a version number.
 - Since after 6.66 the Official naming has changed (6.66 Rev 1), just increment the version number instead of trying to match the number to the name (e.g. 6.66 Rev 1 -> 67).

Splitting, Load Removal, and other features should work across all versions, even new ones (unless something unexpected changes).

Follow the steps below to find the new addresses. Perform any scans in `DOOMEternalx64vk.exe`'s memory space unless otherwise specified.  
This process will need to be repeated per supported platform (currently only Steam & Bethesda).

### Level Name

Using Cheat Engine, scan for a map string. Scanning for `game/shell/shell` while in the main menu should net 3 results. One of these results will change faster than the others, use this one in the ASL. (Usually the 3rd in the list)  
Value is named `levelName` in the ASL file.

#### List of Level Names

```
Main Menu              - game/shell/shell
--------------

Base Campaign
--------------
Hell on Earth          - game/sp/e1m1_intro/e1m1_intro
Exultia                - game/sp/e1m2_battle/e1m2_battle
Cultist Base           - game/sp/e1m3_cult/e1m3_cult
Doom Hunter Base       - game/sp/e1m4_boss/e1m4_boss
Super Gore Nest        - game/sp/e2m1_nest/e2m1_nest
ARC Complex            - game/sp/e2m2_base/e2m2_base
Mars Core              - game/sp/e2m3_core/e2m3_core
Sentinel Prime         - game/sp/e2m4_boss/e2m4_boss
Taras Nabad            - game/sp/e3m1_slayer/e3m1_slayer
Nekravol               - game/sp/e3m2_hell/e3m2_hell
Nekravol Part II       - game/sp/e3m2_hell_b/e3m2_hell_b
Urdak                  - game/sp/e3m3_maykr/e3m3_maykr
Final Sin              - game/sp/e3m4_boss/e3m4_boss

Fortress of Doom (Hub) - game/hub/hub
--------------

Ancient Gods 1
--------------
UAC Atlantica Facility - game/dlc/e4m1_rig/e4m1_rig
The Blood Swamps       - game/dlc/e4m2_swamp/e4m2_swamp
The Holt               - game/dlc/e4m3_mcity/e4m3_mcity

ARC Carrier (Hub)      - game/dlc/hub/hub
--------------

Ancient Gods 2
--------------
The World Spear        - game/dlc2/e5m1_spear/e5m1_spear
Reclaimed Earth        - game/dlc2/e5m2_earth/e5m2_earth
Immora                 - game/dlc2/e5m3_hell/e5m3_hell
The Dark Lord          - game/dlc2/e5m4_boss/e5m4_boss
```

You can go to any map by typing the `map game/...` command in the console but you need to unlock your console first.  
**This overwrites your currently selected save slot**, so if you care about that save, make sure you have a backup.

### Load Removal

Load Removal uses 3 values to determine if the runner is loading or in menu. `isLoading`, `isLoading2`, and `isInGame`.  
 - `isLoading` is a value of `0` when in the main menu or in game, and is a value of `1` when in a loading screen. The value of `1` also persists until the game starts fading back in from the post-loading-screen blackscreen.
   - This blackscreen can be lengthened by loading back in to the game within a certain time interval (may vary per hardware). Because of this, the ASL will inject time back into the Game Timer if it detects a blackscreen lasting for longer than 2 seconds (also removing 1 second from the injection to account for hardware differences and the standard blackscreen length)
 - `isLoading2` is a value of `0` when in the main menu or in game, and is a value of `1` when in a loading screen. If this loading screen is a transition to a new level (for the current save slot: e.g. Cultist Base -> Doom Hunter Base), this value is `2` instead of `1`
 - `inInGame` is a value of `0` when in the main menu, and is a value of `1` when in a loading screen or in game. This is used to detect if a player exits to the main menu, since there's no loading screen for said action

#### isLoading and isLoading2

 1. In Cheat Engine, scan for a single `Byte` value that is `1` when there is a loading screen and `0` when in the game or main menu
 2. Once you've slimmed the results down enough, you'll want to enter a loading screen in between levels (I use `map game/sp/e1m3_cult/e1m3_cult.map` then `noclip` to the end of the level. WARNING: This overwrites your currently selected save slot). In this loading screen, there should be a single pointer with a value of `2`. This is the `isLoading2` value in the ASL file
 3. Afterwards, there should be two pointers that swap to `0` slower than than `isLoading2` when exiting a loading screen (this swap happens when the blackscreen ends). Use the 1st of the two for `isLoading` in the ASL file (address ends in an `8`)

#### isInGame

 1. In Cheat Engine, scan for a single `Byte` value that is `1` when in game or in a loading screen and `0` when in the main menu
 2. Once you've got a relatively small list of pointers (load into multiple different maps to help slim down the list), you'll need to go through a few of them with the `Find what accesses this address` option. Start from the bottom
     - If you have not already done so, save your cheat table and current scan session before continuing. Attaching CE's debugger to DOOMEternal can cause the game to randomly crash and/or hang on loads
 3. Find the address that is accessed by the following instructions. Use this for the `isInGame` value in the ASL file
     - Do note that the instructions may not appear exactly like this, but should still follow the same structure across versions  
     ![Imgur](https://i.imgur.com/tAGxXhO.png)  
     `lock inc` appears after `isInGame` swaps to `1`  
     `lock dec` appears after `isInGame` swaps to `0`

### Cutscene ID

Cutscene ID lets us track where you are. Value is `0` in the main menu, `1` in game, and unique per cutscene (and even per camera angle in certain cutscenes)  
To find the address:
 1. Start a new game for the Base Campaign
 2. Once King Novik starts his speech, scan for `4 Bytes` with a value range of `3000-3500`
 3. After the asteroid passes your screen, revealing The Moon and Earth, scan for values increased by `2`
 4. After the zoom in on Earth finishes and the closeup shot is on screen, scan for values increased by `3`. If you only have 2-3 pointers in the list at this point, you can skip the next step
 5. *(Optional)* Once the camera moves to the shot inside the Fortress, scan for values increased by `14`

You should have 2-3 pointers in the list. One of them may be randomly changing values while the cutscene is playing, you can ignore this one.  
Of the remaining two, pick the 2nd one to use for `cutsceneID` in the ASL file.

Once you have the address, run through and save the IDs of the following cutscenes:
 - Base Campaign
   - Intro **[4 IDs]**
   - Super Gore Nest - End of Level **[1 ID]**
   - Icon of Sin - Phase 2 Death **[1st ID]**
 - Ancient Gods 1
   - Intro **[2 IDs]**
   - Samur Knockout *(Single Camera shot right after killing the 2nd Spirit)* **[1 ID]**
 - Ancient Gods 2
   - Intro **[2 IDs]**
   - Dark Lord - Final Knockout *(After Phase 5)* **[1st ID]**

These IDs are set at the end of the `init` function.  
Cutscene IDs do not differ between the Steam and Bethesda versions of the game.

### Can Move

This byte determines if you're able to move at the start of the first level **Hell on Earth**. It's used only when you skip the intro or restart the level through the "Reset Mission" button
- Value is `0` before you can move and `255` once you can move
- Value is also `0` at the end of the loading screen in HoE

There should be three consecutive pointers with the exact same behavior. Use the first of these three (ends in a `1`).  
Value is named `canMove` in the ASL file.

### Combat Rating

Hidden Combat Rating is currently used to validate whether a runner has completed all fights in *The Ancient Gods 1* for the **100% All Combat Rating** category.  
We have a resource document detailing all **required** encounters (and some optional) in the game and DLCs that you may find of use. You can find the UAC Atlantica encounters [here](https://docs.google.com/document/d/15BZ6j8a0nQukOvY93aHMsUO2MStfqPIX33Rl-8CGRR8/edit#heading=h.sp3rwqsk8lgu "Encounter Index - UACA").

To find this value:
 1. Start a new save and kill all enemies until the first fight concludes and the bottom door unlocks (`killMonsters` is a useful command for this). Scan for a single `Byte` of value `1`. Make sure to scan **ALL** memory space, not just DOOM Eternal's
 2. Complete the next fight and scan for values increased by `1`. You can also check the console for a string that reads `<SIZE> Encounter complete. Awarding X Combat Points: Y of 21 at Z.ZZ completion percent` and scan for the exact value of `X`
 3. Repeat step 2 until you reach the hallway with Zombies and a single Turret (this encounter does not grant Combat Rating, so complete the fight but don't scan)
 4. After the single Turret in the hallway with Zombies, repeat step 2 again until you reach the Marauder in front of the elevator that requires the Red Keycard
 5. Ride the elevator up, then move passed all the enemies until you reach the button near the codex. Once the Cacodemons spawn, do one final scan. This should leave you with a single pointer.
 6. Add the address to the list and do a Pointer scan for this address. Default settings for the scan should be fine (I use 5 max offsets and 5 max level)
 7. Once the scan finishes, Sort by `Offset 0` then `Offset 1` then `Offset 0` again. Find the pointer with `DOOMEternalx64vk.exe` as the base address with Offsets `0`, `288`, `1A8`, `8`, and `88`, in that order. Use the Base Address offset of this entry

Value is named `tagCombatRating` in the ASL file. If you copied a state block, you should only need to change the base address offset for this value.

### Finding the Module Size

Open LiveSplit with the autosplitter enabled and navigate to the autosplitter settings to find the current version's module size.  
Or use the code below.
```
version = modules.First().FileVersionInfo.FileVersion;
print (version);
print("ModuleMemorySize");
print(Convert.ToString(modules.First().ModuleMemorySize, 16));
```

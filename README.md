# doom-eternal
Doom eternal livesplit repository
You have to give a big thanks to Micrologist for his awesome work !

## Unlocking console : 
To unlock the console, you can use the Cheat table avaiable here : 
https://fearlessrevolution.com/viewtopic.php?t=11889


Or search for an "Array of byte" in Cheat engine with the following value : **4C8B0EBA01000000488BCE448BF041FF51** and change the 5th byte from 1 to 0


## Autosplitting : 
*Micrologist*

Cheat engine, look for 4byte int value that keeps track of map ids this is how it is mapped to the different maps:

```
4 - Main Menu
5 - map game/sp/e1m1_intro/e1m1_intro
6 - map game/sp/e1m2_battle/e1m2_battle
7 - map game/sp/e1m3_cult/e1m3_cult
8 - map game/sp/e1m4_boss/e1m4_boss
9 - map game/sp/e2m1_nest/e2m1_nest
10- map game/sp/e2m2_base/e2m2_base
11- map game/sp/e2m3_core/e2m3_core
12- map game/sp/e2m4_boss/e2m4_boss
13- map game/sp/e3m1_slayer/e3m1_slayer
14- map game/sp/e3m2_hell/e3m2_hell
15- map game/sp/e3m2_hell_b/e3m2_hell_b
16- map game/sp/e3m3_maykr/e3m3_maykr
17- map game/sp/e3m4_boss/e3m4_boss
```
Value is named levelID in the ASL file 

You can go to any map by typing the "map game...." command above in the console but you need to unlock your console first 

## Load removal 

- Cheat engine, Look for single byte value that is "1" when there is a loading screen
- You should find a static pointer immediatly without the need for a pointer scan
- You might find 8 static pointer that will behave similarly, however when you will look at them, the 4th and 5th ones should switch to 0 a bit later. this is even more flagrant when you're running on a low performing disk drive or artificially choking your drive
- you should then use the one that switch to 0 the later

if you load a level one and got back to the main menu, one will switch to "1" quicker than the others, use this one.

## Cutscene ID : 

Cutscene ID let us track where you are, Look for 4byte it can take the following values : 

```
Opening Cutscene: 3266 (start) then 3268, 3271 and 3285
First Priest Death (End of the Intro Corridor): 3231
Intro Final Boss: 3167
Death Final Boss: 3162

Ingame / No Cutscene playing: 1
In Menu: 0
```
## CanMove
This byte determines if you're able to move at the start of the first level "Hell on Earth" it's used only when you skip the intro or restart the level through the "reset level" button
- Value is 0 before you can move and 255 once you can move
- Value is also 0 at the end of the loading screen in HoE

## a
```
version = modules.First().FileVersionInfo.FileVersion;
print (version);
print("ModuleMemorySize");
print(Convert.ToString(modules.First().ModuleMemorySize, 16));
```

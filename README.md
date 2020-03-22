# doom-eternal
Doom eternal livesplit repository

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

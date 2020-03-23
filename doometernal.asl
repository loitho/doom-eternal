//Doom Eternal Autosplitter
//v0.1.8 (22/03/2020)
//By Micrologist, Loitho

state("DOOMEternalx64vk", "v7.1.1 Steam")
{
	bool isLoading : 0x6051240;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
	int cutsceneID: 0x4C7A084;
}

state("DOOMEternalx64vk", "v7.1.1 Bethesda")
{
	bool isLoading : 0x6012F40;
	bool isInGame : 0x60EDED8;
	byte levelID : 0x06192468, 0x28;
	byte cutsceneID: 0x4C3C684; //TODO
}

startup
{
	vars.startAfterNextLoad = false;
	vars.highestLevelSplit = 5;
	vars.openingCutsceneIDs = new List<int> { 3266, 3268, 3271, 3285 };
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	print(moduleSize.ToString());
	if (moduleSize == 507191296 || moduleSize == 515133440)
	{
		version = "v7.1.1 Steam";
	} 
	else if (moduleSize == 450445312)
	{
		version = "v7.1.1 Bethesda";
	}
	
}

exit
{
	timer.IsGameTimePaused = true;
}

isLoading
{
	return (current.isLoading || !current.isInGame);
}

split
{
	if(current.levelID > old.levelID && current.levelID > vars.highestLevelSplit)
	{
		vars.highestLevelSplit = current.levelID;
		return true;
	}
	
	//Uncomment once we have a Bethesda Cutscene Pointer
	/*
	if(current.levelID == 17 && current.cutsceneID == 3162)
		return true;
	*/
}

start
{
	//Comment out once we have a Bethesda Cutscene Pointer
	if(current.levelID == 5 && old.levelID == 4)
		vars.startAfterNextLoad = true;
	
	if(vars.startAfterNextLoad && current.isLoading == false && old.isLoading == true)
	{
		vars.startAfterNextLoad = false;
		vars.highestLevelSplit = 5;
		return true;
	}
	
	//Uncomment once we have a Bethesda Cutscene Pointer
	/*
	if(current.levelID == 5 && vars.openingCutsceneIDs.Contains(old.cutsceneID) && current.cutsceneID == 1)
	{
		vars.highestLevelSplit = 5;
		return true;
	}
	*/
}

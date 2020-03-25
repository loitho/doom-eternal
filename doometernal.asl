//Doom Eternal Autosplitter
//v0.2 (23/03/2020)
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
	int cutsceneID: 0x4C3C684;
}

startup
{
	vars.startAfterCutscene = false;
	vars.highestLevelSplit = 5;
	vars.openingCutsceneIDs = new List<int> { 3266, 3268, 3271, 3285 };
	vars.timeToRemove = 0;
	vars.setGameTime = false;
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	print(moduleSize.ToString());
	if (moduleSize == 507191296 || moduleSize == 515133440 || moduleSize = 510681088)
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
	
	if(current.levelID == 17 && current.cutsceneID == 3162) //final boss killed
		return true;
}

gameTime
{
	if(vars.setGameTime)
	{
		vars.setGameTime = false;
		return TimeSpan.FromSeconds(-vars.timeToRemove);
	}
}

start
{
	if(current.cutsceneID == 0)
		vars.startAfterCutscene = false;
	
	if(current.levelID == 5 && vars.openingCutsceneIDs.Contains(current.cutsceneID)) //opening cutscene is playing
	{
		vars.timeToRemove = 3;
		vars.startAfterCutscene = true;
	}
	
	if(current.isLoading && vars.startAfterCutscene) //opening cutscene was skipped with reset mission
	{
		vars.timeToRemove = 1.5;
	}
	
	if(current.cutsceneID == 1 && vars.startAfterCutscene)
	{
		vars.startAfterCutscene = false;
		vars.highestLevelSplit = 5;
		vars.setGameTime = true;
		return true;
	}
}

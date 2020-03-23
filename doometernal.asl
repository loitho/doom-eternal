//Doom Eternal Autosplitter
//v0.1.7 (22/03/2020)
//By Micrologist, Loitho

state("DOOMEternalx64vk", "v7.1.1 Steam")
{
	bool isLoading : 0x6051240;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
}

state("DOOMEternalx64vk", "v7.1.1 Bethesda")
{
	bool isLoading : 0x6012F40;
	bool isInGame : 0x000000; // !!!
	byte levelID : 0x06192468, 0x28; 
}

startup
{
	vars.startAfterNextLoad = false;
	vars.highestLevelSplit = 4;
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	
	if (moduleSize == 507191296)
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
	//return (current.isLoading || !current.isInGame);
	return current.isLoading;
}

split
{
	if(current.levelID > old.levelID && current.levelID > vars.highestLevelSplit)
	{
		vars.highestLevelSplit = current.levelID;
		return true;
	}
}

start
{
	if(current.levelID == 5 && old.levelID == 4)
		vars.startAfterNextLoad = true;
	
	if(vars.startAfterNextLoad && current.isLoading == false && old.isLoading == true)
	{
		vars.startAfterNextLoad = false;
		vars.highestLevelSplit = 5;
		return true;
	}
}

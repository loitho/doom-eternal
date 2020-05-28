//Doom Eternal Autosplitter
//v2020-05-17-1 Added steam support for may hotfix1
//By Micrologist, Loitho

state("DOOMEternalx64vk", "v7.1.1 Steam")
{
	bool isLoading : 0x4D11AD8;
	bool isLoading2: 0x6051240;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
	int cutsceneID: 0x4C7A084;
	byte canMove: 0x339BA01;
}

state("DOOMEternalx64vk", "v7.1.1 Bethesda")
{
	bool isLoading : 0x4CD40D8;
	bool isLoading2: 0x6012F40;
	bool isInGame : 0x60EDED8;
	byte levelID : 0x06192468, 0x28;
	int cutsceneID: 0x4C3C684;
	byte canMove: 0x3361881;
}

state("DOOMEternalx64vk", "May Patch Steam")
{
    	bool isLoading : 0x4D01058;
	bool isLoading2: 0x60407C0;
	bool isInGame : 0x5FF4B58;
	byte levelID : 0x061C19F8, 0x28;
	int cutsceneID: 0x4C69604;
	byte canMove: 0x3400A11;
}

state("DOOMEternalx64vk", "May Hotfix Steam")
{
   	bool isLoading : 0x4D02158;
	bool isLoading2: 0x60418C0;
	bool isInGame : 0x5FF5C58;
	byte levelID : 0x061C2AF8, 0x28;
	int cutsceneID: 0x4C6A704;
	byte canMove: 0x3401A11;
}

state("DOOMEternalx64vk", "May Hotfix Bethesda")
{
	bool isLoading : 0x4CC47D8;
	bool isLoading2: 0x6003640;
	bool isInGame : 0x60DE978;
	byte levelID : 0x06184748, 0x28;
	int cutsceneID: 0x4C2CD84;
	byte canMove: 0x33C78A1;
}

state("DOOMEternalx64vk", "Patch 1.1 - Steam")
{
   	bool isLoading : 0x4D033D8;
	bool isLoading2: 0x6042B40;
	bool isInGame : 0x5FF6ED8;
	byte levelID : 0x061C3D78, 0x28;
	int cutsceneID: 0x4C6B984;
	byte canMove: 0x3402A41;
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
	print("Main Module Size: "+moduleSize.ToString());
	if (moduleSize == 507191296 || moduleSize == 515133440 || moduleSize == 510681088)
	{
		version = "v7.1.1 Steam";
	} 
	else if (moduleSize == 450445312 || moduleSize == 444944384) //not tested
	{
		version = "v7.1.1 Bethesda";
	}
   	else if (moduleSize == 482037760) //steam may patch
    	{
        	version = "May Patch Steam";
    	}
    	else if (moduleSize == 546783232) //steam may hotfix
    	{
        	version = "May Hotfix Steam";
   	}
    	else if (moduleSize == 455708672) 
    	{
        	version = "May Hotfix Bethesda";
   	}
	else if (moduleSize == 492113920)
	{
		version = "Patch 1.1 - Steam";
	}
	else
	{
		version = "Unsupported: " + moduleSize.ToString();
		// Display popup if version is incorrect
       		MessageBox.Show("This game version is currently not supported.", "LiveSplit - Unsupported Game Version");
    	}
}

update
{
	// Disable the autosplitter if the version is incorrect
	if (version.Contains("Unsupported"))
		return false;
}

exit
{
	timer.IsGameTimePaused = true;
}

isLoading
{
	return (current.isLoading || current.isLoading2 || !current.isInGame);
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
	vars.highestLevelSplit = 5;
	
	// HoE was reset and opening cutscene was not shown
	if(current.levelID == 5 && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame) && old.canMove == 0 && current.canMove == 255)
	{
		vars.timeToRemove = 0;
		vars.setGameTime = true;
		return true;
	}
	
	if(current.cutsceneID == 0)
		vars.startAfterCutscene = false;
	
	if(current.levelID == 5 && vars.openingCutsceneIDs.Contains(current.cutsceneID)) //opening cutscene is playing
	{
		vars.timeToRemove = 3;
		vars.startAfterCutscene = true;
	}
	
	if(current.isLoading && vars.startAfterCutscene) //opening cutscene was skipped with reset mission
	{
		vars.timeToRemove = 1;
	}
	
	if(current.cutsceneID == 1 && vars.startAfterCutscene)
	{
		vars.startAfterCutscene = false;
		vars.setGameTime = true;
		return true;
	}
}

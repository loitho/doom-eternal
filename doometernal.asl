//Doom Eternal Autosplitter
//v0.2 (23/03/2020)
//v0.3 (27/03/2020) // isloading changed to accomodate for low performing disks
//v0.4 (27/03/2020) // Adding popup for incorrect versions
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
        	MessageBox.Show("Support for this game version is largely untested.\n3Please report any bugs to Micrologist#2351 on Discord.", "Doom Eternal - Untested Game Version");
        	version = "May Patch Steam";
    	}
	else
	{
		version = "Unsupported: " + moduleSize.ToString();
		// Display popup if version is incorrect
		//MessageBox.Show("This game version is currently not supported by the Autosplitter, please contact Micrologist#2351 or Loitho#4546 on the Doom Discord. \n\nInclude a screenshot of this message and let us know whether you are using the Steam or the Bethesda version.\n\nModule Size: "+moduleSize.ToString(), "Doom Eternal - Unsupported Game Version");
       		MessageBox.Show("This game version is currently not supported.\nA patch was released on 2020-05-14 and the Autosplitter is not compatible with that patch yet.\nPlease downpatch your game.", "Doom Eternal - Unsupported Game Version");
        
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

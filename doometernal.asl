//Doom Eternal Autosplitter
//v0.2 (23/03/2020)
//v0.3 (27/03/2020) // isloading changed to accomodate for low performing disks
//v0.4 (27/03/2020) // Adding popup for incorrect versions
//By Micrologist, Loitho

state("DOOMEternalx64vk", "v7.1.1 Steam")
{
	bool isLoading : 0x4D11AD8;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
	int cutsceneID: 0x4C7A084;
}

state("DOOMEternalx64vk", "v7.1.1 Bethesda")
{
	bool isLoading : 0x4CD40D8;
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
	print("Main Module Size: "+moduleSize.ToString());
	if (moduleSize == 507191296 || moduleSize == 515133440 || moduleSize == 510681088)
	{
		version = "v7.1.1 Steam";
	} 
	else if (moduleSize == 450445312 || moduleSize == 444944384) //not tested
	{
		version = "v7.1.1 Bethesda";
	}
	else
	{
		version = "Unsupported: " + moduleSize.ToString();

		// Display popup if version is incorrect
		var result = MessageBox.Show(timer.Form,
		"This autosplitter script is not supported\n"
		+ "Contact Micrologist#2351 or Loitho#4546 on Doom discord \n"
		+ "Include a screenshot of this message\n"
		+ "And if you're on Steam or Bethesda\n\n"
		+ "Your modulesize is: \n"
		+ moduleSize.ToString() + "\n",
		"Doom Eternal Autosplitter script",
		MessageBoxButtons.OKCancel,
		MessageBoxIcon.Information);

		// Allow action to be run if you press OK
		// if (result == DialogResult.OK)
		// {
		// 	Process.Start("https://yourwebsite.com/README.md");
		// }
	}
}

update
{
	// Disable the autosplitter if the version is incorrect
	if (version.Contains("Unsupported"))
	{
		return false;
	}
	return true;
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

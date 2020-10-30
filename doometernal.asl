//Doom Eternal Autosplitter
//v2020-07-03 Added support for patch2
//By Micrologist, Loitho

// Undeceiver 2020-10-30 - Added (optional) hidden combat rating tracking for The Ancient Gods 100%.
// bowsr 2020-10-23 - Updated for Steam 3.1 and added support for Bethesda
//   *   2020-10-21 - Added support for DLC Auto Start/Split and updated for Steam 3.0
//   *   2020-08-30 - Updated Load Remover and Auto Start/Split for Steam 2.1

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


state("DOOMEternalx64vk", "Patch 1.1 - Bethesda")
{
	bool isLoading : 0x4CC5958;
	bool isLoading2: 0x60047C0;
	bool isInGame : 0x60DFAF8;
	byte levelID : 0x061858C8, 0x28;
	int cutsceneID: 0x4C2DF04;
	byte canMove: 0x33C88D1;
}

state("DOOMEternalx64vk", "Patch 2.0 - Steam")
{
   	bool isLoading : 0x3463698;
	bool isLoading2: 0x5081EA8;
	bool isInGame : 0x6376768;
	byte levelID : 0x0;
	int cutsceneID: 0x0;
	byte canMove: 0x0;
}

state("DOOMEternalx64vk", "Patch 2.0 - Bethesda")
{
   	bool isLoading : 0x34284F8;
	bool isLoading2: 0x50434A8;
	bool isInGame : 0x6337440;
	byte levelID : 0x0;
	int cutsceneID: 0x0;
	byte canMove: 0x0;
}

state("DOOMEternalx64vk", "Patch 2.1 - Steam")
{
	bool isLoading : 0x5084F28;
	bool isLoading2: 0x63C5298;
	bool isInGame : 0x6379668;
	string31 levelName : 0x63CE708; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FED4C4;
	byte canMove: 0x64EA631;
}

state("DOOMEternalx64vk", "Patch 3.0 - DLC1 - Steam")
{
	bool isLoading : 0x527BC98;
	byte isLoading2: 0x6695CD8;
	bool isInGame : 0x6647F20;
	string31 levelName : 0x669F218; 
	byte levelID : 0x0;
	int cutsceneID: 0x6581140;
	byte canMove: 0x67BDA41;
}

state("DOOMEternalx64vk", "Patch 3.1 - DLC1 - Steam")
{
	bool isLoading : 0x527BD18;
	byte isLoading2: 0x6695D58;
	bool isInGame : 0x6647FA0;
	string31 levelName : 0x67706F0; 
	byte levelID : 0x0;
	int cutsceneID: 0x632A8A0;
	byte canMove: 0x67BDAC1;
	int tagCombatRating: 0x67706A0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 3.1 - DLC1 - Bethesda")
{
	bool isLoading : 0x523D098;
	byte isLoading2: 0x6656658;
	bool isInGame : 0x66088B0;
	string31 levelName : 0x6730FF0; 
	byte levelID : 0x0;
	int cutsceneID: 0x62EBA20;
	byte canMove: 0x677E3C1;	
}


startup
{
	vars.startAfterCutscene = false;
	vars.highestLevelSplit = 5;
	vars.openingCutsceneIDs = new List<int> { 3266, 3268, 3271, 3285 };

	// Cutscene IDs were changed with Patch 2.1 (2.0?) & 3.0
	// 2.1 - Other IDs (For Reference) - First Priest: 3229 | Final Boss Intro: 3220, Death: 3215
	vars.openingCutsceneIDsNew = new List<int> { 3263, 3265, 3268, 3282 };

	// 3.0 - Other IDs (For Reference) - First Priest: 3230 | Final Boss Intro: 3220, Death: 3215
	// DLC1 IDs - Start: 2666, 2577 | Finish 1: 1957 - Finish 2: 4133, 4127
	vars.openingCutsceneIDsDLC1_V = new List<int> { 3264, 3266, 3269, 3283 };
	vars.openingCutsceneIDsDLC1_TAG = new List<int> { 2666, 2577 };
	
	vars.timeToRemove = 0;
	vars.setGameTime = false;
	
	if (timer.CurrentTimingMethod == TimingMethod.RealTime) {        
    		var timingMessage = MessageBox.Show (
       			"This game uses Time without Loads (Game Time) as the main timing method.\n"+
    			"LiveSplit is currently set to show Real Time (RTA).\n"+
    			"Would you like to set the timing method to Game Time?",
       		 	"Doom Eternal | LiveSplit",
       			MessageBoxButtons.YesNo,MessageBoxIcon.Question
       		);
		
        	if (timingMessage == DialogResult.Yes) {
			timer.CurrentTimingMethod = TimingMethod.GameTime;
        	}
	}

	settings.Add("trackHiddenCR",false,"Track hidden combat rating");
	// Text component to print hidden CR
	vars.textComponent = (Action<string, string>)((id, text) => {
    		var textSettings = timer.Layout.Components.Where(x => x.GetType().Name == "TextComponent").Select(x => x.GetType().GetProperty("Settings").GetValue(x, null));
	    	var textSetting = textSettings.FirstOrDefault(x => (x.GetType().GetProperty("Text1").GetValue(x, null) as string) == id);
    		if (textSetting == null) {
      			var textComponentAssembly = Assembly.LoadFrom("Components\\LiveSplit.Text.dll");
      			var textComponent = Activator.CreateInstance(textComponentAssembly.GetType("LiveSplit.UI.Components.TextComponent"), timer);
      			timer.Layout.LayoutComponents.Add(new LiveSplit.UI.Components.LayoutComponent("LiveSplit.Text.dll", textComponent as LiveSplit.UI.Components.IComponent));

      			textSetting = textComponent.GetType().GetProperty("Settings", BindingFlags.Instance | BindingFlags.Public).GetValue(textComponent, null);
      			textSetting.GetType().GetProperty("Text1").SetValue(textSetting, id);
    		}

    		if (textSetting != null)
    			textSetting.GetType().GetProperty("Text2").SetValue(textSetting, text);
	});
	// Total CR values for each level
	// We do this as a variable for each level for now because they're few. Feel free to transform into a better structure.
	vars.maxUACACR = 21;
	vars.UACAlevelName = "e4m1_rig";
	vars.maxBSCR = 29;
	vars.BSlevelName = "e4m2_swamp";
	vars.maxHoltCR = 17;
	vars.HoltLevelName = "e4m3_mcity";
	vars.curLevelMaxCR = 1;
	vars.inMaxCRLevel = false;	
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	print("Main Module Size: "+moduleSize.ToString());
	// Undeceiver 2020/10/29 - A guy from the LiveSplit Discord almost forced me to change this to a switch in order to help me do what I had to. I told him I did not want to break it, but I couldn't deny it should not break it.
	switch(moduleSize)
	{
		case 507191296: case 515133440: case 510681088:
			version = "v7.1.1 Steam";
			vars.isTagCRSupported = false;
			break;
		case 450445312: case 444944384: //not tested
			version = "v7.1.1 Bethesda";
			vars.isTagCRSupported = false;
			break;
		case 482037760: //steam may patch
    			version = "May Patch Steam";
			vars.isTagCRSupported = false;
			break;
		case 546783232: //steam may hotfix
    		   	version = "May Hotfix Steam";
			vars.isTagCRSupported = false;
			break;
   		case 455708672:
        		version = "May Hotfix Bethesda";
			vars.isTagCRSupported = false;
			break;
		case 492113920:
			version = "Patch 1.1 - Steam";
			vars.isTagCRSupported = false;
			break;
		case 457285632:
			version = "Patch 1.1 - Bethesda";
			vars.isTagCRSupported = false;
			break;
		case 490299392:
        		version = "Patch 2.0 - Steam";
        		MessageBox.Show("This game version is only partially supported.\nAuto start and splitting are not available.", "LiveSplit - Warning");
			vars.isTagCRSupported = false;
			break;
		case 454758400:
    			version = "Patch 2.0 - Bethesda";
        		MessageBox.Show("This game version is only partially supported.\nAuto start and splitting are not available.", "LiveSplit - Warning");
			vars.isTagCRSupported = false;
			break;
		case 505344000:
			version = "Patch 2.1 - Steam";
			vars.isTagCRSupported = false;
			break;
		case 475557888:
			version = "Patch 3.0 - DLC1 - Steam";
			vars.isTagCRSupported = false;
			break;
		case 504107008:
			version = "Patch 3.1 - DLC1 - Steam";
			vars.isTagCRSupported = true;
			break;
		case 485183488:
			version = "Patch 3.1 - DLC1 - Bethesda";
			vars.isTagCRSupported = false;
			break;
		default:
			version = "Unsupported: " + moduleSize.ToString();
			// Display popup if version is incorrect
    			MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
			vars.isTagCRSupported = false;
			break;
    }
}

update
{
	// Disable the autosplitter if the version is incorrect
	if (version.Contains("Unsupported"))
		return false;
	
	if (vars.isTagCRSupported && settings["trackHiddenCR"])
	{
		vars.inMaxCRLevel = false;
		if (current.levelName.Contains(vars.UACAlevelName))
		{
			vars.inMaxCRLevel = true;
			vars.curLevelMaxCR = vars.maxUACACR;
		} else if (current.levelName.Contains(vars.BSlevelName)) {
			vars.inMaxCRLevel = true;
			vars.curLevelMaxCR = vars.maxBSCR;
		} else if (current.levelName.Contains(vars.HoltLevelName)) {
			vars.inMaxCRLevel = true;
			vars.curLevelMaxCR = vars.maxHoltCR;
		}

		if (vars.inMaxCRLevel)
		{
			vars.curCRPercentage = 100 * current.tagCombatRating / vars.curLevelMaxCR;
			vars.textComponent("Hidden combat rating ", current.tagCombatRating.ToString() + "/" + vars.curLevelMaxCR + " (" + vars.curCRPercentage.ToString("0.") + "%)");
		} else {
			vars.textComponent("Hidden combat rating ", "(not in a level)");		
		}
	 }
}

exit
{
	timer.IsGameTimePaused = true;
}

isLoading
{
	if(version.Contains("DLC1"))
	{
		// 3.0 - isLoading2 now has a value of 2 if loading into a new level for the first time
		return (current.isLoading || current.isLoading2 > 0 || !current.isInGame);
	}
	return (current.isLoading || current.isLoading2 || !current.isInGame);
}

split
{
    if(version.Contains("Patch 2.0"))
        return false;
    
	// Grabbing the levelID no longer works on 2.0+ so the levelName strings are compared instead
    if(version.Contains("Patch 2.1") || version.Contains("DLC1"))
	{
		if(String.IsNullOrEmpty(current.levelName) || String.IsNullOrEmpty(old.levelName))
			return false;
		
		// Prevents quitouts from advancing splits since highestLevelSplit is no longer used for 2.1+
		if(current.levelName.Contains("game/shell/shell") || current.levelName.Contains("game/hub/hub") || old.levelName.Contains("game/shell/shell") || current.levelName.Contains("game/dlc/hub/hub"))
			return false;

        if(current.levelName != old.levelName)
			return true;

		// Vanilla Campaign final split
		if(current.levelName.Contains("e3m4_boss") && current.cutsceneID == 3215)
			return true;

		// The Ancient Gods P1 Campaign final split
		// cutsceneID: 1957 is the first of two ending cutscenes, and is unskippable
		//             4133 is the second of two ending cutscenes, and is skippable
		//             There is no player input in between these two cutscenes, so the first is used
		if(current.levelName.Contains("e4m3_mcity") && current.cutsceneID == 1957)
			return true;
	}else
	{
		// Backwards compatibility for versions before 2.0

		if(current.levelID > old.levelID && current.levelID > vars.highestLevelSplit)
	    {
	    	vars.highestLevelSplit = current.levelID;
	    	return true;
	    }
	    
	    if(current.levelID == 17 && current.cutsceneID == 3162) //final boss killed
	    	return true;
	}
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

    if(version.Contains("Patch 2.0"))
        return false;
	
	// Grabbing the levelID no longer works on 2.0+ so the levelName strings are compared instead
	if(version.Contains("Patch 2.1"))
	{
		// HoE was reset and opening cutscene was not shown
	    if(current.levelName.Contains("e1m1_intro") && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame) && old.canMove == 0 && current.canMove == 255)
	    {
	    	vars.timeToRemove = 0;
	    	vars.setGameTime = true;
	    	return true;
	    }
	    
	    if(current.levelName.Contains("e1m1_intro") && vars.openingCutsceneIDsNew.Contains(current.cutsceneID)) //opening cutscene is playing
	    {
	    	vars.timeToRemove = 3;
	    	vars.startAfterCutscene = true;
	    }
	}else if(version.Contains("DLC1"))
	{
		// HoE was reset and opening cutscene was not shown
	    if(current.levelName.Contains("e1m1_intro") && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame) && old.canMove == 0 && current.canMove == 255)
	    {
	    	vars.timeToRemove = 0;
	    	vars.setGameTime = true;
	    	return true;
	    }
	    
	    if(current.levelName.Contains("e1m1_intro") && vars.openingCutsceneIDsDLC1_V.Contains(current.cutsceneID)) //opening cutscene is playing
	    {
	    	vars.timeToRemove = 3;
	    	vars.startAfterCutscene = true;
	    }

		// The Ancient Gods Part One
		if(current.levelName.Contains("e4m1_rig") && vars.openingCutsceneIDsDLC1_TAG.Contains(old.cutsceneID) && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame))
		{
			vars.timeToRemove = 0;
			vars.setGameTime = true;
			return true;
		}
	}else
	{
		// Backwards compatibility for versions before 2.0
		
	    // HoE was reset and opening cutscene was not shown
	    if(current.levelID == 5 && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame) && old.canMove == 0 && current.canMove == 255)
	    {
	    	vars.timeToRemove = 0;
	    	vars.setGameTime = true;
	    	return true;
	    }
	    
	    if(current.levelID == 5 && vars.openingCutsceneIDs.Contains(current.cutsceneID)) //opening cutscene is playing
	    {
	    	vars.timeToRemove = 3;
	    	vars.startAfterCutscene = true;
	    }
	}

	if(current.cutsceneID == 0)
		vars.startAfterCutscene = false;

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

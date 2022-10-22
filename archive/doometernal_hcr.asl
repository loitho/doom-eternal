// Doom Eternal Autosplitter
// By Micrologist, Loitho, bowsr, Undeceiver

state("DOOMEternalx64vk", "Release Patch 1.0 - Steam") // Release Version (Slopeboosts)
{
	bool isLoading : 0x4D11AD8;
	bool isLoading2: 0x6051240;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
	int cutsceneID: 0x4C7A084;
	byte canMove: 0x339BA01;
	string31 levelName : 0x612A850;
	byte rampJumps : 0x6126430;
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

state("DOOMEternalx64vk", "Patch 1.1 - Steam")
{
   	bool isLoading : 0x4D033D8;
	bool isLoading2: 0x6042B40;
	bool isInGame : 0x5FF6ED8;
	byte levelID : 0x061C3D78, 0x28;
	int cutsceneID: 0x4C6B984;
	byte canMove: 0x3402A41;
	string31 levelName : 0x611C4F0;
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

state("DOOMEternalx64vk", "Patch 3.0 - Steam")
{
	bool isLoading : 0x527BC98;
	byte isLoading2: 0x6695CD8;
	bool isInGame : 0x6647F20;
	string31 levelName : 0x669F218; 
	byte levelID : 0x0;
	int cutsceneID: 0x6581140;
	byte canMove: 0x67BDA41;
}

state("DOOMEternalx64vk", "Patch 3.1 - Steam")
{
	bool isLoading : 0x527BD18;
	byte isLoading2: 0x6695D58;
	bool isInGame : 0x6647FA0;
	string31 levelName : 0x67706F0; 
	byte levelID : 0x0;
	int cutsceneID: 0x632A8A0;
	byte canMove: 0x67BDAC1;
	int tagCombatRating: 0x67706A0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
	byte unDelay: 0x67CF2F0;
}

state("DOOMEternalx64vk", "Patch 4.0 - Steam")
{
	bool isLoading : 0x520FD78;
	byte isLoading2: 0x66B0B88;
	bool isInGame : 0x6665090;
	string31 levelName : 0x678B6C0; 
	byte levelID : 0x0;
	int cutsceneID: 0x62E89D0;
	byte canMove: 0x67D8B91;
	int tagCombatRating: 0x678B670, 0x0, 0x288, 0x1A8, 0x8, 0x88;
    // There was another valid pointer chain, noted here just in case the current one stops working for whatever reason
    // 0x678B670, 0x458, 0x8, 0x88
}

state("DOOMEternalx64vk", "Patch 4.1 - Steam")
{
	bool isLoading : 0x520FD78;
	byte isLoading2: 0x66B1788;
	bool isInGame : 0x6665C90;
	string31 levelName : 0x678C2C0; 
	byte levelID : 0x0;
	int cutsceneID: 0x62E89D0;
	byte canMove: 0x67D9791;
	int tagCombatRating: 0x678C270, 0x0, 0x288, 0x1A8, 0x8, 0x88; // 0x678C270, 0x458, 0x8, 0x88
	byte unDelay: 0x67EB1C0;
}

state("DOOMEternalx64vk", "Patch 5.0 - Steam")
{
	bool isLoading : 0x4F058C8;
	byte isLoading2: 0x63A6510;
	bool isInGame : 0x635B870;
	string31 levelName : 0x657DDE0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4EA1F78;
	byte canMove: 0x65CCEE1;
	int tagCombatRating: 0x657DD90, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 5.1 - Steam")
{
	bool isLoading : 0x4F058C8;
	byte isLoading2: 0x63A6510;
	bool isInGame : 0x635B870;
	string31 levelName : 0x657DDE0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4EA1F78;
	byte canMove: 0x65CCEE1;
	int tagCombatRating: 0x657DD90, 0x0, 0x288, 0x1A8, 0x8, 0x88;
	byte unDelay: 0x65DF250;
}

state("DOOMEternalx64vk", "Patch 6.0 - Steam")
{
	bool isLoading : 0x500BE98;
	byte isLoading2: 0x6783890;
	bool isInGame : 0x6737AF0;
	string31 levelName : 0x695B120; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA7548;
	byte canMove: 0x69A4D81;
	int tagCombatRating: 0x695B0D0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.1 - Steam")
{
	bool isLoading : 0x500BE98;
	byte isLoading2: 0x6783890;
	bool isInGame : 0x6737AF0;
	string31 levelName : 0x695B120; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA7548;
	byte canMove: 0x69A4D81;
	int tagCombatRating: 0x695B0D0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.2 - Steam")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	int tagCombatRating: 0x695D650, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.3 - Steam")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	int tagCombatRating: 0x695D650, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.4 - Steam")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	int tagCombatRating: 0x695D650, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.66 - Steam")
{
	bool isLoading : 0x5194E18;
	byte isLoading2: 0x68FCC90;
	bool isInGame : 0x68AFF10;
	string31 levelName : 0x6AD43A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x512EFA8;
	byte canMove: 0x6B1E7C1;
	int tagCombatRating: 0x6AD4350, 0x0, 0x288, 0x1A8, 0x8, 0x88;
}

state("DOOMEternalx64vk", "Patch 6.66 Rev 1 - Steam")
{
	bool isLoading : 0x51B8498;
	byte isLoading2: 0x6920310;
	bool isInGame : 0x68D3590;
	string31 levelName : 0x6AF7A20; 
	byte levelID : 0x0;
	int cutsceneID: 0x5153B48;
	byte canMove: 0x6B41ED1;
	int tagCombatRating: 0x6AF79D0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
	byte unDelay: 0x6B53F10;
}

state("DOOMEternalx64vk", "Patch 6.66 Rev 1.1 - Steam")
{
	bool isLoading : 0x51B9898;
	byte isLoading2: 0x6921710;
	bool isInGame : 0x68D5B70;
	string31 levelName : 0x6AF8E20; 
	byte levelID : 0x0;
	int cutsceneID: 0x5154F48;
	byte canMove: 0x6B432D1;
	int tagCombatRating: 0x6AF8DD0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
	byte unDelay: 0x6B55310;
}

state("DOOMEternalx64vk", "Patch 6.66 Rev 2 - Steam")
{
	bool isLoading : 0x51F4418;
	byte isLoading2: 0x695C490;
	bool isInGame : 0x690F710;
	string31 levelName : 0x6B33E30; 
	byte levelID : 0x0;
	int cutsceneID: 0x518FAC8;
	byte canMove: 0x68C83D1;
	int tagCombatRating: 0x6B33DE0, 0x0, 0x288, 0x1A8, 0x8, 0x88;
	byte unDelay: 0x6B904E0;
}


startup
{
	vars.gameVersion = 0;
	vars.newSplitMethod = true;
    vars.ebs = false;
    vars.injectEBS = false;
	
	vars.startAfterCutscene = false;
	vars.highestLevelSplit = 5;
	vars.isTagCRSupported = false;
	vars.disableRJSupport = false;

	// Var to store Offset of "pauseMenu_delayUNPrompt" command
	vars.unDelayOffset = 0x0;

	vars.hasSplitFS = false;
	vars.hasSplitHolt = false;

	// Vanilla Cutscene IDs
	vars.openingCutsceneIDs = new List<int> { 3266, 3268, 3271, 3285 };
	vars.endingCutsceneID = 3162;
	// TAG1 Cutscene IDs
	vars.openingDLC1CutsceneIDs = new List<int> { 2666, 2577 };
	vars.endingDLC1CutsceneID = 1957;
	// TAG2 Cutscene IDs
	vars.openingDLC2CutsceneIDs = new List<int> { 3499, 3532 };
	vars.endingDLC2CutsceneID = 499;

	// Cutscene IDs can change across versions
	// Opening Cutscene has 4 IDs that change by +2 +3 +14
	// See the README in this ASL's repository for more detailed instructions on how to find the pointer

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

	// Setting to allow automatically disabling Ramp Jumping on the Steam Release version
	settings.Add("disableRJ", false, "Disable Ramp Jumping (Release Version Only)");
	settings.SetToolTip("disableRJ", "Sets pm_allowRampJumping to 0.\nRequired for Limited & Restricted runs played on the 1.0 (Release) Patch.");

	// Setting to allow automatically disabling Ultra-Nightmare quitout delay
	// Supported versions -> Steam: 3.1/4.1/5.1/6.66 Rev 1
	settings.Add("unDelay", false, "Disable UN quitout delay");
	settings.SetToolTip("unDelay", "Disables the delay when quitting to menu/desktop during an Ultra-Nightmare run.\nOnly supported for versions: Steam 3.1/4.1/5.1/6.66 Rev 1+");

	settings.Add("trackHiddenCR", false, "Track hidden combat rating (TAG1)");
	settings.SetToolTip("trackHiddenCR", "Required setting if running 100% All Combat Rating (ACR) for Ancient Gods 1");
	settings.Add("trackHiddenCRTAG2", false, "Track hidden combat rating (TAG2 - Deprecated)");
	settings.SetToolTip("trackHiddenCRTAG2", "Setting is no longer required for TAG2 100% All Combat runs.\nFunctionality still works if you still want it, but you can safely disable this.");

	// Setting that enables a split at the final SGN cutscene (intended for Master Level)
	// This also disables the standard autosplit/start functions to prevent issues (load remover still applies)
	settings.Add("sgnML", false, "Super Gore Nest ML (DISABLES NORMAL AUTOSPLITTER)");
	settings.SetToolTip("sgnML", "Enabling this option allows for the timer to autosplit at the end of the SGN ML." + 
								 "\nWARNING: This disables the autosplitter in both the base and dlc campaigns on versions 4.0+");

	// Settings to support hub visits as separate splits
	settings.Add("fortressSplits", false, "Split when entering Fortress of Doom");
	settings.SetToolTip("fortressSplits", "Enable this setting if you want the autosplitter to split when entering the hub.\nYou can also disable on a per level basis if you want some but not the rest.");
	settings.Add("fortressHOE", true, "Hell on Earth", "fortressSplits");
	settings.Add("fortressExultia", true, "Exultia", "fortressSplits");
	settings.Add("fortressDHB", true, "Doom Hunter Base", "fortressSplits");
	settings.Add("fortressSGN", true, "Super Gore Nest", "fortressSplits");
	settings.Add("fortressARC", true, "Arc Complex", "fortressSplits");
	settings.Add("fortressSP", true, "Sentinel Prime", "fortressSplits");
	settings.Add("fortressTB", true, "Taras Nabad", "fortressSplits");

	// Settings to support sequential playthroughs (Base + DLCs, etc)
	settings.Add("sequentialSplitting", false, "Sequential Playthrough Splitting");
	settings.SetToolTip("sequentialSplitting", "Enables support for sequential playthroughs of the Base Campaign and DLCs.");
	settings.Add("sequentialLevelSplit", true, "Split on Icon/Samur death cutscenes", "sequentialSplitting");
	settings.SetToolTip("sequentialLevelSplit", "Disabling this changes split method to next level splitting.\ne.g. Will no longer split on Icon's death cutscene, but will instead split when you load into UACA.");

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
	vars.maxSpearCR = 38;
	vars.spearLevelName = "e5m1_spear";
	vars.maxReclaimedCR = 18;
	vars.reclaimedLevelName = "e5m2_earth";
	vars.maxImmoraCR = 7;
	vars.immoraLevelName = "e5m3_hell";
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
			version = "Release Patch 1.0 - Steam";
			vars.gameVersion = 1;
			vars.disableRJSupport = true;
			break;
		case 482037760: //steam may patch
    		version = "May Patch Steam";
			vars.gameVersion = 10;
			vars.newSplitMethod = false;
			break;
		case 546783232: //steam may hotfix
    		version = "May Hotfix Steam";
			vars.gameVersion = 10;
			vars.newSplitMethod = false;
			break;
		case 492113920:
			version = "Patch 1.1 - Steam";
			vars.gameVersion = 11;
			break;
		case 490299392:
        	version = "Patch 2.0 - Steam";
			vars.gameVersion = 20;
			vars.newSplitMethod = false;
        	MessageBox.Show("This game version is only partially supported.\nAuto start and splitting are not available.", "LiveSplit - Warning");
			break;
		case 505344000:
			version = "Patch 2.1 - Steam";
			vars.gameVersion = 21;
			break;
		case 475557888:
			version = "Patch 3.0 - Steam";
			vars.gameVersion = 30;
			break;
		case 504107008:
			version = "Patch 3.1 - Steam";
			vars.gameVersion = 31;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x67CF2F0;
			break;
        case 478056448:
            version = "Patch 4.0 - Steam";
			vars.gameVersion = 40;
            vars.isTagCRSupported = true;
            break;
		case 472821760:
			version = "Patch 4.1 - Steam";
			vars.gameVersion = 41;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x67EB1C0;
			break;
		case 475787264:
			version = "Patch 5.0 - Steam";
			vars.gameVersion = 50;
			vars.isTagCRSupported = true;
			break;
		case 459132928:
			version = "Patch 5.1 - Steam";
			vars.gameVersion = 51;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x65DF250;
			break;
		case 481435648:
			version = "Patch 6.0 - Steam";
			vars.gameVersion = 60;
			vars.isTagCRSupported = true;
			break;
		case 465915904:
			version = "Patch 6.1 - Steam";
			vars.gameVersion = 61;
			vars.isTagCRSupported = true;
			break;
		case 464543744:
			version = "Patch 6.2 - Steam";
			vars.gameVersion = 62;
			vars.isTagCRSupported = true;
			break;
		case 483786752:
			version = "Patch 6.3 - Steam";
			vars.gameVersion = 63;
			vars.isTagCRSupported = true;
			break;
		case 494395392:
			version = "Patch 6.4 - Steam";
			vars.gameVersion = 64;
			vars.isTagCRSupported = true;
			break;
		case 508350464:
			version = "Patch 6.66 - Steam";
			vars.gameVersion = 66;
			vars.isTagCRSupported = true;
			break;
		case 478367744:
			version = "Patch 6.66 Rev 1 - Steam";
			vars.gameVersion = 67;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x6B53F10;
			break;
		case 475570176:
			version = "Patch 6.66 Rev 1.1 - Steam";
			vars.gameVersion = 68;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x6B55310;
			break;
		case 510251008:
			version = "Patch 6.66 Rev 2 - Steam";
			vars.gameVersion = 69;
			vars.isTagCRSupported = true;
			vars.unDelayOffset = 0x6B904E0;
			break;
		default:
			version = "Unsupported: " + moduleSize.ToString();
			// Display popup if version is incorrect
    		MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
			vars.isTagCRSupported = false;
			vars.disableRJSupport = false;
			break;
    }

	if(vars.gameVersion >= 21) // Update 2.1
	{
		vars.openingCutsceneIDs = new List<int> { 3263, 3265, 3268, 3282 };
		vars.endingCutsceneID = 3215;
		if(vars.gameVersion >= 30) // Update 3.0
		{
			vars.openingCutsceneIDs = new List<int> { 3264, 3266, 3269, 3283 };
			if(vars.gameVersion >= 40) // Update 4.0
			{
				vars.endingCutsceneID = 3217;
				vars.openingDLC1CutsceneIDs = new List<int> { 2662, 2573 };
				vars.endingDLC1CutsceneID = 1955;
				vars.sgnCutscene = 6704;
				if(vars.gameVersion == 41) vars.sgnCutscene = 6706; // Update 4.1
				if(vars.gameVersion >= 50) // Update 5.0
				{
					vars.openingCutsceneIDs = new List<int> { 3263, 3265, 3268, 3282 };
					vars.endingCutsceneID = 3220;
					vars.openingDLC1CutsceneIDs = new List<int> { 2674, 2585 };
					vars.endingDLC1CutsceneID = 1961;
					vars.sgnCutscene = 6615;
					if(vars.gameVersion >= 60) // Update 6.0
					{
						vars.openingCutsceneIDs = new List<int> { 3228, 3230, 3233, 3247 };
						vars.endingCutsceneID = 3238;
						vars.openingDLC1CutsceneIDs = new List<int> { 3014, 3092 };
						vars.endingDLC1CutsceneID = 1053;
						vars.openingDLC2CutsceneIDs = new List<int> { 3391, 3354 };
						vars.endingDLC2CutsceneID = 549;
						vars.sgnCutscene = 6612;
						if(vars.gameVersion >= 66) // Update 6.66
						{
							vars.endingCutsceneID = 3239;
							vars.openingDLC1CutsceneIDs = new List<int> { 3015, 3093 };
							vars.openingDLC2CutsceneIDs = new List<int> { 3465, 3428 };
							vars.sgnCutscene = 6613;
							if(vars.gameVersion >= 67) // Update 6.66 Rev 1
							{
								vars.openingDLC2CutsceneIDs = new List<int> { 3466, 3429 };
								if(vars.gameVersion >= 69) // Update 6.66 Rev 2
								{
									vars.openingCutsceneIDs = new List<int> { 3229, 3231, 3234, 3248 };
									vars.endingCutsceneID = 3241;
									vars.endingDLC1CutsceneID = 1054;
									vars.sgnCutscene = 6614;
								}
							}
						}
					}
				}
			}
		}
	}
}

update
{
	// Disable the autosplitter if the version is incorrect
	if (version.Contains("Unsupported"))
		return false;

	// Sets "pm_allowRampJumping" to 0 if version 1.0 is detected and the user has enabled the option in the settings
	if(vars.disableRJSupport && current.rampJumps == 1)
	{
		if(settings["disableRJ"]) game.WriteBytes(modules.First().BaseAddress + 0x6126430, new byte[] { 0x0 });
	}

	// Sets "pauseMenu_delayUNPrompt" to 0 if a supported version is detected and the user enabled the option.
	// This command removes the ~3 second delay before you can quit to menu/desktop during an Ultra-Nightmare run.
	if(vars.unDelayOffset != 0x0 && current.unDelay == 1)
	{
		if(settings["unDelay"]) game.WriteBytes(modules.First().BaseAddress + (int)vars.unDelayOffset, new byte[] { 0x0 });
	}
	
	if (vars.isTagCRSupported && (settings["trackHiddenCR"] || settings["trackHiddenCRTAG2"]))
	{
		vars.inMaxCRLevel = false;
		if(settings["trackHiddenCR"]) {
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
		}
		if(settings["trackHiddenCRTAG2"]) {
			if (current.levelName.Contains(vars.spearLevelName)) {
				vars.inMaxCRLevel = true;
				vars.curLevelMaxCR = vars.maxSpearCR;
			} else if (current.levelName.Contains(vars.reclaimedLevelName)) {
				vars.inMaxCRLevel = true;
				vars.curLevelMaxCR = vars.maxReclaimedCR;
			} else if (current.levelName.Contains(vars.immoraLevelName)) {
				vars.inMaxCRLevel = true;
				vars.curLevelMaxCR = vars.maxImmoraCR;
			}
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
	// Blackscreen detection
	// 	Current Real Time is saved upon the start and end of a blackscreen, then the diff is injected back into Game Time in the gameTime() Action
    var loading2 = false;
    if(vars.gameVersion >= 30) loading2 = current.isLoading2 > 0;
    else loading2 = current.isLoading2;
    
    if(vars.ebs)
    {
		// This condition checks if the blackscreen ends or if a new level is loaded during a blackscreen
        if(!current.isLoading || (current.isLoading && current.isLoading2 != old.isLoading2))
        {
            vars.ebs = false;
            vars.timeAfterEBS = timer.CurrentTime.RealTime;
            vars.injectEBS = true;
        }
    }
    if(current.isLoading && !loading2 && current.isInGame && !vars.ebs)
    {
        vars.ebs = true;
        vars.timeBeforeEBS = timer.CurrentTime.RealTime;
    }
    
	if(vars.gameVersion >= 30)
	{
		// 3.0 - isLoading2 now has a value of 2 if loading into a new level for the first time
		return (current.isLoading || current.isLoading2 > 0 || !current.isInGame);
	}
	return (current.isLoading || current.isLoading2 || !current.isInGame);
}

split
{
    if(vars.gameVersion == 20)
        return false;
    
	if(vars.gameVersion >= 40 && settings["sgnML"])
	{
		if(current.levelName.Contains("e2m1_nest") && current.cutsceneID == vars.sgnCutscene)
			return true;
		else
			return false;
	}
	// Grabbing the levelID no longer works on 2.0+ so the levelName strings are compared instead
    if(vars.newSplitMethod)
	{
		if(String.IsNullOrEmpty(current.levelName) || String.IsNullOrEmpty(old.levelName))
			return false;

		// Prevents quitouts from advancing splits since highestLevelSplit is no longer used
		if(current.levelName.Contains("game/shell/shell") || current.levelName.Contains("game/dlc/hub/hub"))
			return false;

		// Prevents mission select from splitting
		if(vars.completedLevels.Contains(current.levelName))
			return false;

        if(current.levelName != old.levelName)
		{
			// Split upon entry to hub
			if(current.levelName.Contains("game/hub/hub"))
			{
				if(vars.prevLevel.Contains("e1m1_intro") && !settings["fortressHOE"]) 		return false; // Hell on Earth
				if(vars.prevLevel.Contains("e1m2_battle") && !settings["fortressExultia"]) 	return false; // Exultia
				if(vars.prevLevel.Contains("e1m4_boss") && !settings["fortressDHB"]) 		return false; // Doom Hunter Base
				if(vars.prevLevel.Contains("e2m1_nest") && !settings["fortressSGN"]) 		return false; // Super Gore Nest
				if(vars.prevLevel.Contains("e2m2_base") && !settings["fortressARC"]) 		return false; // Arc Complex
				if(vars.prevLevel.Contains("e2m4_boss") && !settings["fortressSP"]) 		return false; // Sentinel Prime
				if(vars.prevLevel.Contains("e3m1_slayer") && !settings["fortressTB"]) 		return false; // Taras Nabad
			}

			// Prevents hub quitouts from splitting
			if((old.levelName.Contains("game/shell/shell") && vars.completedLevels.Contains(vars.prevLevel)))
				return false;

			if((current.levelName != vars.prevLevel && !vars.completedLevels.Contains(vars.prevLevel)))
			{
				// Stores completed levels so using mission select (e.g. for IDKFA glitch) doesn't split
				vars.completedLevels.Add(vars.prevLevel);
			}
			
			// Prevents splitting when changing from Final Sin or Holt if cutscene splits are still enabled for sequential playthroughs.
			if((vars.prevLevel.Contains("e3m4_boss") || vars.prevLevel.Contains("e4m3_mcity")) && settings["sequentialLevelSplit"])
				return false;

			// Compares to actual level (not hub/menu)
			return current.levelName != vars.prevLevel;
		}

		// Stores actual level. Used to prevent splitting issues with menu quitouts.
		if(!current.levelName.Contains("game/hub/hub"))
			vars.prevLevel = current.levelName;

		// Split on Icon of Sin death cutscene
		if(current.levelName.Contains("e3m4_boss") && current.cutsceneID == vars.endingCutsceneID)
		{
			if(settings["sequentialSplitting"])
			{
				// Prevents splitting on cutscene if level splitting for sequential runs is enabled
				// Also prevents splitting multiple times during the cutscene
				if(!settings["sequentialLevelSplit"] || vars.hasSplitFS) return false;
				vars.hasSplitFS = true;
			}
			return true;
		}

		// Split on Samur death cutscene (1st one)
		if(current.levelName.Contains("e4m3_mcity") && current.cutsceneID == vars.endingDLC1CutsceneID)
		{
			if(settings["sequentialSplitting"])
			{
				// Prevents splitting on cutscene if level splitting for sequential runs is enabled
				// Also prevents splitting multiple times during the cutscene
				if(!settings["sequentialLevelSplit"] || vars.hasSplitHolt) return false;
				vars.hasSplitHolt = true;
			}
			return true;
		}

		// Split on Dark Lord death cutscene
		if(current.levelName.Contains("e5m4_boss") && current.cutsceneID == vars.endingDLC2CutsceneID)
			return true;
	}else
	{
		// Backwards compatibility for old versions

		if(current.levelID > old.levelID && current.levelID > vars.highestLevelSplit)
	    {
	    	vars.highestLevelSplit = current.levelID;
	    	return true;
	    }

	    if(current.levelID == 17 && current.cutsceneID == vars.endingCutsceneID) //final boss killed
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

    // Injects EBS time, minus one second, back into Game Timer if the EBS time is greater than two seconds.
	// 	If a blackscreen's duration is greater than two seconds, this guarantees that it is an EBS.
	// 	Subtracting a second is to account for the normal blackscreen length that always happens upon reloads/quitouts.
    if(vars.injectEBS)
    {
        vars.injectEBS = false;
        var diff = vars.timeAfterEBS - vars.timeBeforeEBS;
        var newGameTime = timer.CurrentTime.GameTime + diff - TimeSpan.FromSeconds(1);
        return (diff >= TimeSpan.FromSeconds(2)) ? newGameTime : timer.CurrentTime.GameTime;
    }
}

start
{
	vars.highestLevelSplit = 5;
	vars.hasSplitFS = false;
	vars.hasSplitHolt = false;

    if(vars.gameVersion == 20 || (vars.gameVersion >= 40 && settings["sgnML"]))
        return false;
	
	// Grabbing the levelID no longer works on 2.0+ so the levelName strings are compared instead
	if(vars.newSplitMethod)
	{
		vars.completedLevels = new List<string>();

		// HoE was reset and opening cutscene was not shown
	    if(current.levelName.Contains("e1m1_intro") && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame) && old.canMove == 0 && current.canMove == 255)
	    {
	    	vars.timeToRemove = 0;
	    	vars.setGameTime = true;
	    	return true;
	    }
	    
	    if(current.levelName.Contains("e1m1_intro") && vars.openingCutsceneIDs.Contains(current.cutsceneID)) //opening cutscene is playing
	    {
	    	vars.timeToRemove = 3;
	    	vars.startAfterCutscene = true;
	    }

		// TAG1 Start
		if(current.levelName.Contains("e4m1_rig") && vars.openingDLC1CutsceneIDs.Contains(old.cutsceneID) && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame))
		{
			vars.timeToRemove = 0;
			vars.setGameTime = true;
			return true;
		}

		// TAG2 Start
		if(current.levelName.Contains("e5m1_spear") && vars.openingDLC2CutsceneIDs.Contains(old.cutsceneID) && current.cutsceneID == 1 && !(current.isLoading || !current.isInGame))
		{
			vars.timetoRemove = 0;
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

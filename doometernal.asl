// Doom Eternal Autosplitter
// By Micrologist, Loitho, bowsr, Undeceiver

state("DOOMEternalx64vk", "Release 1.0 (Steam)") // Release Version (Slopeboosts)
{
	bool isLoading : 0x4D11AD8;
	bool isLoading2: 0x6051240;
	bool isInGame : 0x612C1D8;
	byte levelID : 0x061D0868, 0x28;
	int cutsceneID: 0x4C7A084;
	byte canMove: 0x339BA01;
	string31 levelName : 0x612A850;
	byte rampJumps : 0x6126430;
	float posX : 0x5F787C0;
	float posY : 0x5F787C4;
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

state("DOOMEternalx64vk", "1.1 (Steam)")
{
   	bool isLoading : 0x4D033D8;
	bool isLoading2: 0x6042B40;
	bool isInGame : 0x5FF6ED8;
	byte levelID : 0x061C3D78, 0x28;
	int cutsceneID: 0x4C6B984;
	byte canMove: 0x3402A41;
	string31 levelName : 0x611C4F0;
	float posX : 0x5F6A050;
	float posY : 0x5F6A054;
}

state("DOOMEternalx64vk", "2.0 (Steam)")
{
   	bool isLoading : 0x3463698;
	bool isLoading2: 0x5081EA8;
	bool isInGame : 0x6376768;
	byte levelID : 0x0;
	int cutsceneID: 0x0;
	byte canMove: 0x0;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "2.1 (Steam)")
{
	bool isLoading : 0x5084F28;
	bool isLoading2: 0x63C5298;
	bool isInGame : 0x6379668;
	string31 levelName : 0x63CE708; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FED4C4;
	byte canMove: 0x64EA631;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "3.0 (Steam)")
{
	bool isLoading : 0x527BC98;
	byte isLoading2: 0x6695CD8;
	bool isInGame : 0x6647F20;
	string31 levelName : 0x669F218; 
	byte levelID : 0x0;
	int cutsceneID: 0x6581140;
	byte canMove: 0x67BDA41;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "3.1 (Steam)")
{
	bool isLoading : 0x527BD18;
	byte isLoading2: 0x6695D58;
	bool isInGame : 0x6647FA0;
	string31 levelName : 0x67706F0; 
	byte levelID : 0x0;
	int cutsceneID: 0x632A8A0;
	byte canMove: 0x67BDAC1;
	float posX : 0x6581150;
	float posY : 0x6581154;
}

state("DOOMEternalx64vk", "4.0 (Steam)")
{
	bool isLoading : 0x520FD78;
	byte isLoading2: 0x66B0B88;
	bool isInGame : 0x6665090;
	string31 levelName : 0x678B6C0; 
	byte levelID : 0x0;
	int cutsceneID: 0x62E89D0;
	byte canMove: 0x67D8B91;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "4.1 (Steam)")
{
	bool isLoading : 0x520FD78;
	byte isLoading2: 0x66B1788;
	bool isInGame : 0x6665C90;
	string31 levelName : 0x678C2C0; 
	byte levelID : 0x0;
	int cutsceneID: 0x62E89D0;
	byte canMove: 0x67D9791;
	float posX : 0x655E2D0;
	float posY : 0x655E2D4;
}

state("DOOMEternalx64vk", "5.0 (Steam)")
{
	bool isLoading : 0x4F058C8;
	byte isLoading2: 0x63A6510;
	bool isInGame : 0x635B870;
	string31 levelName : 0x657DDE0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4EA1F78;
	byte canMove: 0x65CCEE1;
	float posX : 0x5EBA960;
	float posY : 0x5EBA964;
}

state("DOOMEternalx64vk", "5.1 (Steam)")
{
	bool isLoading : 0x4F058C8;
	byte isLoading2: 0x63A6510;
	bool isInGame : 0x635B870;
	string31 levelName : 0x657DDE0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4EA1F78;
	byte canMove: 0x65CCEE1;
	float posX : 0x5EBA960;
	float posY : 0x5EBA964;
}

state("DOOMEternalx64vk", "6.0 (Steam)")
{
	bool isLoading : 0x500BE98;
	byte isLoading2: 0x6783890;
	bool isInGame : 0x6737AF0;
	string31 levelName : 0x695B120; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA7548;
	byte canMove: 0x69A4D81;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "6.1 (Steam)")
{
	bool isLoading : 0x500BE98;
	byte isLoading2: 0x6783890;
	bool isInGame : 0x6737AF0;
	string31 levelName : 0x695B120; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA7548;
	byte canMove: 0x69A4D81;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "6.2 (Steam)")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	float posX : 0x629C7A0;
	float posY : 0x629C7A4;
}

state("DOOMEternalx64vk", "6.3 (Steam)")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	float posX : 0x629C7A0;
	float posY : 0x629C7A4;
}

state("DOOMEternalx64vk", "6.4 (Steam)")
{
	bool isLoading : 0x500E418;
	byte isLoading2: 0x6785E10;
	bool isInGame : 0x673A3D0;
	string31 levelName : 0x695D6A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x4FA85A8;
	byte canMove: 0x69A7301;
	float posX : 0x629C7A0;
	float posY : 0x629C7A4;
}

state("DOOMEternalx64vk", "6.66 (Steam)")
{
	bool isLoading : 0x5194E18;
	byte isLoading2: 0x68FCC90;
	bool isInGame : 0x68AFF10;
	string31 levelName : 0x6AD43A0; 
	byte levelID : 0x0;
	int cutsceneID: 0x512EFA8;
	byte canMove: 0x6B1E7C1;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "6.66 Rev 1 (Steam)")
{
	bool isLoading : 0x51B8498;
	byte isLoading2: 0x6920310;
	bool isInGame : 0x68D3590;
	string31 levelName : 0x6AF7A20; 
	byte levelID : 0x0;
	int cutsceneID: 0x5153B48;
	byte canMove: 0x6B41ED1;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "6.66 Rev 1.1 (Steam)")
{
	bool isLoading : 0x51B9898;
	byte isLoading2: 0x6921710;
	bool isInGame : 0x68D5B70;
	string31 levelName : 0x6AF8E20; 
	byte levelID : 0x0;
	int cutsceneID: 0x5154F48;
	byte canMove: 0x6B432D1;
	float posX : 0x0;
	float posY : 0x0;
}

state("DOOMEternalx64vk", "6.66 Rev 2 (Steam)")
{
	bool isLoading : 0x51F4418;
	byte isLoading2: 0x695C490;
	bool isInGame : 0x690F710;
	string31 levelName : 0x6B33E30; 
	byte levelID : 0x0;
	int cutsceneID: 0x518FAC8;
	byte canMove: 0x68C83D1;
	float posX : 0x6472C60;
	float posY : 0x6472C64;
}

// state("DOOMEternalx64vk", "6.66 Rev 2 (Gamepass)")
// {
// 	bool isLoading : 0x52ADE98;
// 	byte isLoading2: 0x6A16410;
// 	bool isInGame : 0x69CA7D0;
// 	string31 levelName : 0x6BED920; 
// 	byte levelID : 0x0;
// 	int cutsceneID: 0x5249548;
// 	byte canMove: 0x6C37E91;
// }

state("DOOMEternalx64vk", "6.66 Rev 2.2 (Steam)")
{
	bool isLoading : 0x51C8398;
	byte isLoading2: 0x6930410;
	bool isInGame : 0x68E4870;
	string31 levelName : 0x6B07DB0; 
	byte levelID : 0x0;
	int cutsceneID: 0x5163A48;
	byte canMove: 0x6B52321;
	float posX : 0x6446BE0;
	float posY : 0x6446BE4;
}

state("DOOMEternalx64vk", "6.66 Rev 2.2 (Gamepass)")
{
	bool isLoading : 0x5284098;
	byte isLoading2: 0x69EC610;
	bool isInGame : 0x699F810;
	string31 levelName : 0x6BC3BE0; 
	byte levelID : 0x0;
	int cutsceneID: 0x521F748;
	byte canMove: 0x6C0E161;
	float posX : 0x6502DE0;
	float posY : 0x6502DE4;
}


startup
{
	vars.gameVersion = 0;
	vars.newSplitMethod = true;
    vars.ebs = false;
    vars.injectEBS = false;
	
	vars.startAfterCutscene = false;
	vars.highestLevelSplit = 5;
	vars.disableRJSupport = false;
	vars.doNotResetViaPos = false;
	vars.playerInResetPos = false;
	vars.loadscreen = false;
	vars.hoePosResetSupport = true;

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
	
	// Setting to allow resetting the timer in Hell on Earth based on the player's current position
	//  Allows automatic resetting for those using Reset Mission instead of creating a new save file
	settings.Add("hoeResetPos", true, "Positional Timer Reset in Hell on Earth");
	settings.SetToolTip("hoeResetPos", "Enables resetting the timer in Hell on Earth via the player's position.\nDisable this if you run into issues with reloading during the spawn room.");

	// Setting to allow automatically disabling Ramp Jumping on the Steam Release version
	settings.Add("disableRJ", false, "Disable Ramp Jumping (Release Version Only)");
	settings.SetToolTip("disableRJ", "Sets pm_allowRampJumping to 0.\nRequired for Limited & Restricted runs played on the 1.0 (Release) Patch.");

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
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	print("Main Module Size: " + moduleSize.ToString());
	// Undeceiver 2020/10/29 - A guy from the LiveSplit Discord almost forced me to change this to a switch in order to help me do what I had to. I told him I did not want to break it, but I couldn't deny it should not break it.
	switch(moduleSize)
	{
		case 507191296: case 515133440: case 510681088:
			version = "Release 1.0 (Steam)";
			vars.gameVersion = 1;
			vars.disableRJSupport = true;
			break;
		case 482037760: //steam may patch
    		version = "May Patch Steam";
			vars.gameVersion = 10;
			vars.newSplitMethod = false;
			vars.hoePosResetSupport = false;
			break;
		case 546783232: //steam may hotfix
    		version = "May Hotfix Steam";
			vars.gameVersion = 10;
			vars.newSplitMethod = false;
			vars.hoePosResetSupport = false;
			break;
		case 492113920:
			version = "1.1 (Steam)";
			vars.gameVersion = 11;
			break;
		case 490299392:
        	version = "2.0 (Steam)";
			vars.gameVersion = 20;
			vars.newSplitMethod = false;
			vars.hoePosResetSupport = false;
        	MessageBox.Show("This game version is only partially supported.\nAuto start and splitting are not available.", "LiveSplit - Warning");
			break;
		case 505344000:
			version = "2.1 (Steam)";
			vars.gameVersion = 21;
			vars.hoePosResetSupport = false;
			break;
		case 475557888:
			version = "3.0 (Steam)";
			vars.gameVersion = 30;
			vars.hoePosResetSupport = false;
			break;
		case 504107008:
			version = "3.1 (Steam)";
			vars.gameVersion = 31;
			break;
        case 478056448:
            version = "4.0 (Steam)";
			vars.gameVersion = 40;
			vars.hoePosResetSupport = false;
            break;
		case 472821760:
			version = "4.1 (Steam)";
			vars.gameVersion = 41;
			break;
		case 475787264:
			version = "5.0 (Steam)";
			vars.gameVersion = 50;
			break;
		case 459132928:
			version = "5.1 (Steam)";
			vars.gameVersion = 51;
			break;
		case 481435648:
			version = "6.0 (Steam)";
			vars.gameVersion = 60;
			vars.hoePosResetSupport = false;
			break;
		case 465915904:
			version = "6.1 (Steam)";
			vars.gameVersion = 61;
			vars.hoePosResetSupport = false;
			break;
		case 464543744:
			version = "6.2 (Steam)";
			vars.gameVersion = 62;
			break;
		case 483786752:
			version = "6.3 (Steam)";
			vars.gameVersion = 63;
			break;
		case 494395392:
			version = "6.4 (Steam)";
			vars.gameVersion = 64;
			break;
		case 508350464:
			version = "6.66 (Steam)";
			vars.gameVersion = 66;
			vars.hoePosResetSupport = false;
			break;
		case 478367744:
			version = "6.66 Rev 1 (Steam)";
			vars.gameVersion = 67;
			vars.hoePosResetSupport = false;
			break;
		case 475570176:
			version = "6.66 Rev 1.1 (Steam)";
			vars.gameVersion = 68;
			vars.hoePosResetSupport = false;
			break;
		case 510251008:
			version = "6.66 Rev 2 (Steam)";
			vars.gameVersion = 69;
			break;
		// case 445820928:
		// 	version = "6.66 Rev 2 (Gamepass)";
		// 	vars.gameVersion = 69;
		// 	break;
		case 121769984:
			version = "6.66 Rev 2.2 (Steam)";
			vars.gameVersion = 70;
			break;
		case 122580992:
			version = "6.66 Rev 2.2 (Gamepass)";
			vars.gameVersion = 70;
			break;
		default:
			version = "Unsupported: " + moduleSize.ToString();
			// Display popup if version is incorrect
    		MessageBox.Show("This game version is currently not supported.", "LiveSplit Auto Splitter - Unsupported Game Version");
			vars.disableRJSupport = false;
			vars.hoePosResetSupport = false;
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

	if(vars.hoePosResetSupport)
	{
		vars.playerInResetPos = (current.posX < 37 && current.posX > 35) &&
			    				(current.posY < -1603 && current.posY > -1605);
	}

	// Sets "pm_allowRampJumping" to 0 if version 1.0 is detected and the user has enabled the option in the settings
	if(vars.disableRJSupport && current.rampJumps == 1)
	{
		if(settings["disableRJ"]) game.WriteBytes(modules.First().BaseAddress + 0x6126430, new byte[] { 0x0 });
	}

	// Checks if the player is no longer in the HoE timer reset position of x=36 y=-1604
	if((vars.doNotResetViaPos && vars.loadscreen))
	{
		vars.doNotResetViaPos = false;
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
		vars.loadscreen = (current.isLoading || current.isLoading2 > 0 || !current.isInGame);
		return vars.loadscreen;
	}
	vars.loadscreen = (current.isLoading || current.isLoading2 || !current.isInGame);
	return vars.loadscreen;
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
			vars.doNotResetViaPos = true;
	    	return true;
	    }
	    
	    if(current.levelName.Contains("e1m1_intro") && vars.openingCutsceneIDs.Contains(current.cutsceneID)) //opening cutscene is playing
	    {
	    	vars.timeToRemove = 3;
	    	vars.startAfterCutscene = true;
			vars.doNotResetViaPos = true;
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

reset
{
	if(current.levelName.Contains("e1m1_intro"))
	{
		if(vars.openingCutsceneIDs.Contains(current.cutsceneID))
		{
			vars.doNotResetViaPos = true;
			return true;
		}else if(vars.hoePosResetSupport && (current.cutsceneID == 1 && !vars.doNotResetViaPos))
		{
			if(settings["hoeResetPos"] && vars.playerInResetPos && !vars.loadscreen)
			{
				vars.doNotResetViaPos = true;
				return true;
			}
		}
	}else if(!settings["sequentialSplitting"] && current.levelName.Contains("e4m1_rig"))
	{
		if(vars.openingDLC1CutsceneIDs.Contains(current.cutsceneID))
		{
			return true;
		}
	}else if(!settings["sequentialSplitting"] && current.levelName.Contains("e5m1_spear"))
	{
		if(vars.openingDLC2CutsceneIDs.Contains(current.cutsceneID))
		{
			return true;
		}
	}
}
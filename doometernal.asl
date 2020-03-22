//Doom Eternal Autosplitter
//v0.1.5 (22/03/2020)
//By Micrologist, Loitho
// 

state("DOOMEternalx64vk", "7.1.1 Steam")
{
	byte isLoading : 0x6051240;
	byte levelID : 0x061D0868, 0x28;
}

state("DOOMEternalx64vk", "7.1.1 Bethesda")
{
	byte isLoading : 0x000000;
	byte levelID : 0x06192468, 0x28;
}

startup
{
	vars.startAfterNextLoad = false;
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
    return current.isLoading != 0;
}

split
{
	if(current.levelID > old.levelID)
		return true;
}

start
{
	if(current.levelID == 5 && old.levelID == 4)
		vars.startAfterNextLoad = true;
	
	if(vars.startAfterNextLoad && current.isLoading == 0 && old.isLoading == 1)
	{
		vars.startAfterNextLoad = false;
		return true;
	}
}


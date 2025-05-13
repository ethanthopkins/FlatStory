scStoryRoomManager();
#region MENU
if (room == rMenu) 
{
	instance_create_layer(0,0,layer,oStartMenu);
	global.menuArray = scSelectOption(5,true,global.screenWidth*.5,global.screenHeight*.1,"Month 1 - SketchTown","Month 2 - WolfPine","Month 3 - LodgeCry","Month 4 - The Capitol","Month 5 - The End");
}
if (global.loadData)
{
	scLoadData(global.loadArray,global.loadString)	
	global.loadData = false;
}
#endregion

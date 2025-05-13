/// @description Globals & Enums
randomize();
#region SOUND
global.oldSound = undefined;
soundState = SoundState.Decider;
soundID = undefined;
snSoundPosition = 0;
enum SoundState
{
	Decider,
	SketchTown,
	Chapel,
	ChapelMuted,
	ForestAmbience,
	CabinAmbience,
	TelephoneRing,
	TheOldDays,
	QuietHope
}
oneSketchTownRoomArray[0]     = rLevel1Room0;
	oneSketchTownRoomArray[1] = rLevel1Room1;
	oneSketchTownRoomArray[2] = rLevel1Room2;
	oneSketchTownRoomArray[3] = rLevel1Room3;
	oneSketchTownRoomArray[4] = rLevel1Room4;
	oneSketchTownRoomArray[5] = rLevel1Room5;
	oneSketchTownRoomArray[6] = rLevel1Room6;
	oneSketchTownRoomArray[7] = rLevel1Room7;
	oneSketchTownRoomArray[8] = rLevel1Room9;
twoForestRoomArray[0]         = rLevel2Room0;
	twoForestRoomArray[1]     = rLevel2Room1;
	twoForestRoomArray[2]     = rLevel2Room2;
	twoForestRoomArray[3]     = rLevel2Room3;
	twoForestRoomArray[4]     = rLevel2Room4;
	twoForestRoomArray[5]     = rLevel2Room5;
	twoForestRoomArray[6]	  = rLevel2Room6;
	twoForestRoomArray[7]     = rLevel2Room7;
	//twoForestRoomArray[8]     = rLevel2Room8;
twoWolfPineRoomArray[0]		  = rLevel2WP0;
	twoWolfPineRoomArray[1]   = rLevel2WP1;
	twoWolfPineRoomArray[2]   = rLevel2WP2;
	twoWolfPineRoomArray[3]   = rLevel2WP3;
	twoWolfPineRoomArray[4]   = rLevel2WP4;
	twoWolfPineRoomArray[5]   = rLevel2WP5;
	twoWolfPineRoomArray[6]   = rLevel2WP6;
	twoWolfPineRoomArray[7]   = rLevel2WP7;
	twoWolfPineRoomArray[8]   = rLevel2WP8;
#endregion
#region Story
	set = false;
	set1 = false;
	set2 = false;
	set3 = false;
	#region INDEPENDENT
	global.fireBeastCaveKey = false;
	fireBeastGateLock = undefined;
	global.wolfPineGateKey = false;
	wolfPineGateLock = undefined;
	
	global.follow = false; //should josh follow you
	global.story = 0; //how many times has player completed game. what story is it
	global.storyProgression = 0 //progression through the specific story
	global.genColor = undefined; //what color did player choose at beginning and make that color in game
	global.genCareful = undefined; //how much time is spent in enemy section
	global.genDeath = 0; //how many times have you died
	global.genFound = ds_grid_create(2,1); //where have you been found
		enum genFound {
			bed,
			locker,
			standing
		}
		ds_grid_add(global.genFound, genFound.bed,1,0);
		ds_grid_add(global.genFound, genFound.locker,1,0);
		ds_grid_add(global.genFound, genFound.standing,1,0);
	
	global.oneOven = false; //did you turn oven on (true) or off (false)
	global.oneEveryone = false; //did you talk to everyone in town 1 
	global.oneBike = false; //did you ride bike with son 
	global.oneLovers = 0; //did you help lovers reunite
		#region ONELOVERS TRACKER
			/*
				0 = NOTHING
				1 = TALK TO FLORA
				2 = FLORA SAID YES
			*/
		#endregion

	global.twoSink = false; //did you turn sink off (false) or on (true)
	global.twoEveryone = false; //did you talk to everyone in town
	
	global.threeEveryone = false;
	#endregion
	#region DEPENDENT
	global.oneMessage = false;
		//message is delivered to move logs
	global.twoLogs = false;
		//logs are moved out of way	
	global.threeMurder = false;
		//murderer is found and locked away 
	#endregion
	#region STORYPROGRESSION == 1
		oSTLeaderFollow = undefined;
	#endregion
#endregion
#region Saving/Loading
	global.loadData = false;
	global.loadArray = undefined;
	global.loadString = undefined;
#endregion
#region Text
	global.justForShow = false;
	global.oldLine = 0;
	global.textSpeed = .25;
	global.textColor = c_white;
	global.font = fDefault;
	global.intensity = 0;
	global.talker = sFrank;
	global.name = "Citizen";
	global.wave = false;
	global.msg[1] = "undefined"
	global.speaker = undefined;
	
	global.exclamation = undefined;
	global.sarahCounter = 0;
	global.joshCounter = 0;
	global.stLeaderCounter = 0;
	global.shopKeep1Counter = 0;
	global.fireBeastCounter = 0;
	global.battleCounter = 0;
	global.augustCounter = 0;
	global.samuelCounter = 0;
	global.floraCounter = 0;
	global.athenaCounter = 0;
	global.ruthCounter = 0;
	
	global.responseOne = undefined;
	global.responseTwo = undefined;
	global.responseOneCase = undefined;
	global.responseTwoCase = undefined;
	global.choice = undefined;
	global.instance = undefined;
	global.textNotification = 0;
	global.saveNotification = false;
	global.saveRoom1 = false;
	global.oldTextNotification = 0;
	global.oneTimeText = false;
#endregion
#region RoomChange
	global.targetX = -1;
	global.targetY = -1;
	global.Room = rLevel1Room7;
	global.createPlayer = false;
#endregion
#region Resolution
global.screenWidth = window_get_width();
global.screenHeight = window_get_height();
#endregion
#region menu
global.menu = false;
global.verticleMenu = true;
#endregion
#region camera
	global.iCamera = instance_create_layer(0,0,layer,oCamera);
#endregion
#region Enums
enum saveData 
{
	X,
	Y,
	HP,
	Room,
	Level1OvenOn
}
enum eState 
{
	patrol,
	investigate,
	search,
	checkHidingSpot,
	chase,
	checkLastPosition,
	attack,
	returnToPatrol
}
#endregion
#region Enemy
	global.noise= 0;
#endregion





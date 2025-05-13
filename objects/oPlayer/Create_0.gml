/// @desc Set Variables
#region STATES
enum oPlayerState 
{
	idle,
	crouch,
	crawlInside,
	walk,
	run,
	saw, 
	hidden,
	talk,
	battle,
	death,
	transition
}
set = false;
set1 = false;
state = oPlayerState.idle;
#region SAW STATE
	mouseXPrevious = mouse_x;
	mouseYPrevious = mouse_y;
	initMouseX = 0;
	initMouseY = 0;
	sawTimer = 0;
	sawDistance = 0;
	sawDistancePercentage = 0;
	sawTimerPercentage = 0;
	sawTimerMax = room_speed * .25;
	sawMeterDefaultAddAmount = 100;
	sawMeterAddAmount = 0;
enum sawDirection {
	up,
	down,
	right,
	left
}
sawDirectionCurrent = sawDirection.up;
sawDirectionPrevious = sawDirectionCurrent;
#endregion
#endregion
if (global.targetX != -1) 
{
	x = global.targetX;
	y = global.targetY;
	global.targetX = -1;
	global.targetY = -1;
}
#region INPUTS
cameraUp = false;
cameraDown = false;
cameraRight = false;
cameraLeft = false;
selectUp = false;
selectDown = false;
movementPause = false;
activate = false;
flashlight = false;
#endregion
busy = false;
#region ITEMS
	global.sawRadius = 100;
	inventorySaw = false;
#endregion
#region Movement Speeds
hMove = 0;
vMove = 0;
movementsp = 0;
crouchsp = 2;
walksp = 4;
runsp = 6;
positionX = 0;
positionY = 0;
#endregion
#region Movement Noise
global.noise= 0;
idleNoise = 5;
crouchNoise= 25;
walkNoise= 50;
runNoise= 75;
hidden = false;
Direction = 0;
#endregion
#region Movement Col
hCol = false;
vCol = false;
#endregion
#region Health
playerHealth = 10;
playerMaxHealth = 10;
hit = false;
death = false;
#endregion
activateInstance = undefined;
activateDistance = 100;
activateWidth = 10;
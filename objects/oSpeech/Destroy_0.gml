//oPlayer.alarm[0] = room_speed * .5;
global.msg = 0;
if ((global.responseOne == undefined) || (global.responseTwo == undefined))
{
	oPlayer.state = oPlayerState.transition;
	global.responseOne = undefined;
	global.responseTwo = undefined;
}
if ((global.responseOne != undefined) && (global.responseTwo != undefined))
{
	if (global.choice == 0) {global.choice = global.responseOneCase;}
	if (global.choice == 1) {global.choice = global.responseTwoCase;}
	scGetTheText(global.choice);
}
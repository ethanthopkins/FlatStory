#region README
//set global.oneTimeText to true in conversation script to make the text only appear once and move on to the next line
#endregion
if (instance_exists(oBattle))
{
	oPlayer.state = oPlayerState.battle;	
} else
{
	oPlayer.state = oPlayerState.talk;
}
global.choice = 0;
set1 = false;
set2 = false;
set3 = false;
set4 = false;
set5 = false;
set6 = false;
myString=global.msg[0];
arrayLength = array_length(global.msg);
oldLine = 0;
nextLine = 0;
set = false;
textProgress = 0;
textSpeed = .25;
if (!global.justForShow) oPlayer.movementPause = true;
oPlayer.selectNext = true;
length = string_length(string(myString));
textColor = c_white;
width = global.screenWidth*.5; //max width text can have
font = fDefault;
intensity = 0;
oldCurrent = 0;
diff = 0;
textBoxWidth = global.screenWidth*.9 - global.screenWidth*.1 -.1
current = 0;
rsp1Case = undefined;
rsp1Text = undefined;
rsp2Case = undefined;
rsp2Text = undefined;
optionSelected = 0;
oPlayer.busy = true;
draw_x=global.screenWidth*.25;
draw_y=global.screenHeight*.7;

lastLetterPos = 0;
talker = undefined;
name = "undefined";
wave = false;
/// @desc Update Camera
#region WISHLIST CAMERA
/*
//Update destination
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);
left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
if (up) || (down) || (left) || (right) input = true; else input = false;

if (instance_exists(follow))
{
	if (input)
	{
		//show_debug_message("input: " + string(input));
		hMove = (right - left);
		vMove = (down - up);

		if (hMove = 1) scCamera(lookAhead,0,smooth);
		if (hMove = -1) scCamera(-lookAhead,0,smooth);
		if (vMove = 1) scCamera(0,lookAhead,smooth);
		if (vMove = -1) scCamera(0,-lookAhead,smooth);
	} else scCamera(0, valueY,15);
}*/
#endregion
#region NORMAL CAMERA
//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 5;
y += (yTo - y) / 5;

//Keep camera center inside room
x = clamp(x,viewWidthHalf, room_width-viewWidthHalf);
y = clamp(viewHeightHalf,y, room_height-viewHeightHalf);

//Screenshake
x += random_range(-shakeRemain,shakeRemain);
y += random_range(-shakeRemain,shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

if (instance_exists(oPlayer))
{
	hLookAhead = oPlayer.cameraRight - oPlayer.cameraLeft;
	vLookAhead = oPlayer.cameraDown - oPlayer.cameraUp;
}

if (hLookAhead != 0) 
{
	if (hLookAheadVal < hLookAheadConstant)
	{
		hLookAheadVal += hLookAheadConstant * hLookAhead;
	}
} else {hLookAheadVal = 0;}

if (vLookAhead != 0) 
{
	if (vLookAheadVal < vLookAheadConstant)
	{
		vLookAheadVal += vLookAheadConstant * vLookAhead;
	}
} else {vLookAheadVal = 0;}

camera_set_view_pos(cam,x - viewWidthHalf + hLookAheadVal, y - viewHeightHalf + vLookAheadVal); 
#endregion
 
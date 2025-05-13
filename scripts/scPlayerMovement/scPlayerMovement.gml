// Script assets have changed for v2.3.0 see
// https://help.yoyoGameManagers.com/hc/en-us/articles/360005277377 for more information
function scPlayerInputs()
{
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	cameraUp = keyboard_check(vk_up);
	cameraDown = keyboard_check(vk_down);
	cameraLeft = keyboard_check(vk_left);
	cameraRight = keyboard_check(vk_right);
	run = keyboard_check(vk_shift);
	crouch = keyboard_check(vk_control);
	activate = keyboard_check_pressed(vk_space);
	flashlight = keyboard_check_pressed(ord("F"));
	select = false;		
}
function scPlayerMovement(playerSpeed)
{
	#region Player Movement
		hMove = (right - left) * playerSpeed;
		vMove = (down - up) * playerSpeed;
		if (hMove == 1*playerSpeed) Direction = 0;
		if (hMove ==-1*playerSpeed) Direction = 180;
		if (vMove == 1*playerSpeed) Direction = 270;
		if (vMove == -1*playerSpeed) Direction = 90;
		if (playerSpeed != 0) 
		{
			scPlayerAnimate(Direction);
		} else image_speed = 0;
		scPlayerCol(playerSpeed)
		x += hMove;
		y += vMove;
	#endregion
}
function scPlayerCameraMovement() //this enables the player to "look ahead on the map". moving the camera without moving themselves.
{
		
}
function scPlayerAnimate(Direction)
{
	switch (Direction) 
	{
		case 0: { //right
			switch (state)
			{
				case (oPlayerState.idle): {
					sprite_index = sPlayerIdleRight;
					break;
				}
				case (oPlayerState.crouch): {
					sprite_index = sPlayerCrouchRight;
					break;
				}
				case (oPlayerState.crawlInside): {
					sprite_index = sPlayerCrouchRight;
					break;
				}
				case (oPlayerState.walk): {
					sprite_index = sPlayerWalkRight;
					break;	
				}
				case (oPlayerState.run): {
					sprite_index = sPlayerRunRight;
					break;	
				}
			} 
		} break;	
		case 90: { //up
			switch (state)
			{
				case (oPlayerState.idle): {
					sprite_index = sPlayerIdleUp;
					break;
				}
				case (oPlayerState.crouch): {
					sprite_index = sPlayerCrouchUp;
					break;
				}
				case (oPlayerState.crawlInside): {
					sprite_index = sPlayerCrouchUp;
					break;
				}
				case (oPlayerState.walk): {
					sprite_index = sPlayerWalkUp;
					break;	
				}
				case (oPlayerState.run): {
					sprite_index = sPlayerRunUp;
					break;
				}
			} 	
		} break;
		case 180: { //left
			switch (state)
			{
				case (oPlayerState.idle): {
					sprite_index = sPlayerIdleLeft;
					break;
				}
				case (oPlayerState.crouch): {
					sprite_index = sPlayerCrouchLeft;
					break;
				}
				case (oPlayerState.crawlInside): {
					sprite_index = sPlayerCrouchLeft;
					break;
				}
				case (oPlayerState.walk): {
					sprite_index = sPlayerWalkLeft;
					break;	
				}
				case (oPlayerState.run): {
					sprite_index = sPlayerRunLeft;
					break;
				}
			}
		} break;
		case 270: { //down
			switch (state)
			{
				case (oPlayerState.idle): {
					sprite_index = sPlayerIdleDown;
					break;
				}
				case (oPlayerState.crouch): {
					sprite_index = sPlayerCrouchDown;
					break;
				}
				case (oPlayerState.crawlInside): {
					sprite_index = sPlayerCrouchDown;
					break;
				}
				case (oPlayerState.walk): {
					sprite_index = sPlayerWalkDown;
					break;	
				}
				case (oPlayerState.run): {
					sprite_index = sPlayerRunDown;	
					break;
				}
			}
		} break;
	}
}
function scPlayerIdle()
{
	scPlayerInputs();
	scPlayerAnimate(Direction); //sprite
	global.noise = idleNoise;
	scPlayerNoise();
	
	if (flashlight) scFlashLight();
	if (crouch) //crouch state
	{
		state = oPlayerState.crouch;	
	}
	if (!crouch) && (!run) && ((up) || (down) || (right) || (left)) //walk state
	{
		state = oPlayerState.walk;	
	}
	if (run) //run state
	{
		state = oPlayerState.run;	
	}
	if (activate)
	{
		scActivate();
	}
	if (death) 
	{
		state = oPlayerState.death;	
	}
	#region SAW MODE
		if (inventorySaw)
		{
			
			if (collision_circle(x, y, global.sawRadius, oLog, false, true) != noone)
			{
				scPlayerSaw();
			}
		}
	#endregion
}
function scPlayerCrouch()
{
	scPlayerInputs();
	movementsp = crouchsp; //speed
	scPlayerAnimate(Direction); //sprite
	scPlayerMovement(movementsp); //move
	global.noise= crouchNoise; //noise
	scPlayerNoise()
	
	if (!crouch) && (!run) && (hMove == 0) && (vMove == 0) //idle
	{
		state = oPlayerState.idle;	
	}
	#region WALK
	if (!crouch) && (!run) //walk state
	{
		state = oPlayerState.walk;	
	}
	#endregion
	#region RUN
	if (run) //run state
	{
		state = oPlayerState.run;	
	}
	#endregion
	if (flashlight) scFlashLight();
	if (activate)
	{
		scActivate();
	}	
	if (death) 
	{
		state = oPlayerState.death;	
	}
	#region CRAWL INSIDE
	if (instance_exists(oCrawlInside))
	{
		if (position_meeting(x,y,oCrawlInside))
		{
			state = oPlayerState.crawlInside;	
		}
	}
	#endregion
	#region SAW MODE
		if (inventorySaw)
		{
			if (collision_circle(x, y, global.sawRadius, oLog, false, true) != noone)
			{
				scPlayerSaw();
			}
		}
	#endregion
}
function scPlayerCrawlInside()
{
	scPlayerInputs();
	movementsp = crouchsp; //speed
	scPlayerAnimate(Direction); //sprite
	scPlayerMovement(movementsp); //move
	global.noise= crouchNoise; //noise
	scPlayerNoise()
	
	if (!position_meeting(x,y,oCrawlInside))
	{
		#region WALK
			if (!crouch) && (!run) //walk state
			{
				state = oPlayerState.walk;	
			}		
		#endregion
		#region RUN
			if (run) //run state
			{
				state = oPlayerState.run;	
			}
		#endregion
	}
}
function scPlayerWalk()
{
	scPlayerInputs();
	movementsp = walksp; //speed
	scPlayerAnimate(Direction) //sprite
	scPlayerMovement(movementsp); //move
	global.noise= walkNoise; //noise
	scPlayerNoise()
	
	if (!crouch) && (!run) && (hMove == 0) && (vMove == 0) //idle
	{
		state = oPlayerState.idle;	
	}
	if (crouch) //crouch state
	{
		state = oPlayerState.crouch;	
	}
	if (run) //run state
	{
		state = oPlayerState.run;	
	}
	if (flashlight) 
	{
		scFlashLight();
	}
	if (activate)
	{
		scActivate();
	}
	if (death) 
	{
		state = oPlayerState.death;	
	}
	#region CRAWL INSIDE
	if (instance_exists(oCrawlInside))
	{
		if (position_meeting(x,y,oCrawlInside))
		{
			state = oPlayerState.crawlInside;	
		}
	}
	#endregion
	#region SAW MODE
		if (inventorySaw)
		{
			if (collision_circle(x, y, global.sawRadius, oLog, false, true) != noone)
			{
				scPlayerSaw();
			}
		}
	#endregion
}
function scPlayerRun()
{
	scPlayerInputs();
	movementsp = runsp; //speed
	scPlayerAnimate(Direction) //sprite
	scPlayerMovement(movementsp); //move
	global.noise= runNoise; //noise
	scPlayerNoise()
	
	if (!crouch) && (!run) && (hMove == 0) && (vMove == 0) //idle
	{
		state = oPlayerState.idle;	
	}
	if (!crouch) && (!run) //walk state
	{
		state = oPlayerState.walk;	
	}
	if (crouch) //crouch state
	{
		state = oPlayerState.crouch;	
	}
	if (flashlight) 
	{
		scFlashLight();
	}
	if (activate)
	{
		scActivate();
	}
	if (death) 
	{
		state = oPlayerState.death;	
	}
	#region CRAWL INSIDE
	if (instance_exists(oCrawlInside))
	{
		if (position_meeting(x,y,oCrawlInside))
		{
			state = oPlayerState.crawlInside;	
		}
	}
	#endregion
	#region SAW MODE
		if (inventorySaw)
		{
			if (collision_circle(x, y, global.sawRadius, oLog, false, true) != noone)
			{
				scPlayerSaw();
			}
		}
	#endregion
}
function scPlayerSaw()
{
	//show_debug_message("saw mode");
	var logID = collision_circle(oPlayer.x, oPlayer.y, 100, oLog, false, true);
	var inc = global.screenWidth / 100;
	
	//GET DIRECTION
	#region DIRECTION OF SAW
	if (mouse_x > mouseXPrevious) {sawDirectionCurrent = sawDirection.right;} //RIGHT
	if (mouse_x < mouseXPrevious) {sawDirectionCurrent = sawDirection.left;} //LEFT
	#endregion
	
	//total distance
	if (sawDirectionCurrent == sawDirectionPrevious)							//if saw is going same direction
	{
		if (!set) 
		{
			initMouseX = mouse_x;												//set the starting mouseX location
			set = true;
		}
		sawDistance = abs(mouse_x - initMouseX);								//calculate the distance gone
		sawDistancePercentage = sawDistance / global.screenWidth;				//calculate the percentage of screen that distance is
	} else {																	//if saw moving opposite direction
		set = false;															//restart distance metrics
		sawDistance = 0;
	}
	
	if ((sawDistance % inc) < 5)												//check if distance does not ~ the increment wanted
	{
		set1 = false;
		sawTimer ++;															//if the increment has not been acheived, let the timer keep going
		//show_debug_message("sawTimer: " + string(sawTimer));
	} else {																	//if the increment has been acheived. reset
		if (!set1)
		{
			if (sawTimer >= sawTimerMax) {sawTimer = sawTimerMax / 1000;}
			sawTimerPercentage = (sawTimerMax - sawTimer) / sawTimerMax;
			show_debug_message("sawTimerPercentage: " + string(sawTimerPercentage));
			sawTimer = 0;															//restart the timer
			set1 = true;
		}
		
		//AFFECT SAW METER
		logID.sawMeterProgress += sawTimerPercentage * 10;
	}
	
					//calculate the percentage of time that has elapsed
	//if (sawTimerPercentage < 0) {sawTimerPercentage = 0;}						//the percentage can't be negative
	
	/*
	if ((sawDistance % inc) == 0)												//if the increment wanted has been traveled
	{
		var amountToAdd =+ abs(mouse_x - mouseXPrevious) * sawTimerPercentage;	//calculate the amount
	}
	*/
	
	//UPDATES PREVIOUS METRICS FOR COMPARISON
	sawDirectionPrevious = sawDirectionCurrent;
	mouseXPrevious = mouse_x;
	previousMouseY = mouse_y;
}
function scPlayerHidden()
{
	scPlayerInputs();
	scPlayerAnimate(Direction)	
	global.noise = 0;
	
	if (crouch) && (!hidden) //crouch state
	{
		state = oPlayerState.crouch;	
	}
	if (!crouch) && (!run) && (!hidden) //walk state
	{
		state = oPlayerState.walk;	
	}
	if (run) && (!hidden) //run state
	{
		state = oPlayerState.run;	
	}
	if (flashlight) 
	{
		scFlashLight();
	}
	if (activate)
	{
		scActivate();
	}
	if (death) 
	{
		state = oPlayerState.death;	
	}
}
function scPlayerTalk()
{
	activate = keyboard_check_pressed(vk_space);
	selectUp = keyboard_check_pressed(ord("W"));
	selectDown = keyboard_check_pressed(ord("S"));
}
function scPlayerBattle()
{
	activate = keyboard_check_pressed(vk_space);
	selectUp = keyboard_check_pressed(ord("W"));
	selectDown = keyboard_check_pressed(ord("S"));	
}
function scPlayerDeath()
{
	return;	
}
function scPlayerTransition()
{
	if (instance_exists(oBattle))
	{
		state = oPlayerState.battle;	
	} else
	{
		state = oPlayerState.idle();	
	}
}
#region META SCRIPTS
	function scSawCollectDistanceInfo() {
		//IF SAW MOVING ALONG X AXIS		
		if (!set) 
		{
			initMouseX = mouse_x;
			set = true;
		}
		sawDistance = abs(mouse_x - initMouseX);	
		sawDistancePercentage = sawDistance / global.screenWidth;
	}
	function scSawCollectTimerInfo() {
		sawTimer ++;
	}
#endregion
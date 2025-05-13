function eSight()
{
	#region DIRECTION CHOOSER
	if (eDirection == 0) || (eDirection == 180) || (eDirection == 360) {
		sightX = 0; 
		sightXP = 0;
		sightYP = sightPWid;
		sightY = sightWid;
	}
	if (eDirection == 90) || (eDirection == 270) {
		sightY = 0; 
		sightYP = 0;
		sightXP = sightPWid;
		sightX = sightWid;
	}
	#endregion
	#region NORMAL VISION
	//NORMAL VISION
	var visionID;
	visionID[0] = collision_line(x,y,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection),oPlayer,false,true);
	visionID[1] = collision_line(x+sightX,y+sightY,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection),oPlayer,false,true);
	visionID[2] = collision_line(x-sightX,y-sightY,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection),oPlayer,false,true);
	var check = false;
	var arrayLength = array_length(visionID);
	for (var i = 0; i < arrayLength ; ++i) {
	    if (visionID[i] != noone) check = true;
	}
	if (check) 
	{
		var distanceToPlayer = distance_to_point(oPlayer.x,oPlayer.y);
		var colID = collision_line(x,y,x+lengthdir_x(distanceToPlayer,eDirection),y+lengthdir_y(distanceToPlayer,eDirection),oCol,false,true); //checks if there is a wall in between
		if (colID == noone)
		{
			seen = true; 	
			awareness = 100;
			////show_debug_message("seen: " + string(seen));
		}
	} else {seen = false};
	#endregion
	#region PERI VISION
	//PERI VISION
	var pVisionID;
	pVisionID[0] = collision_line(x+sightXP,y+sightYP,x+lengthdir_x(sightDistanceP,eDirection)+(sightXP*pVisionMultiplier),y+lengthdir_y(sightDistance,eDirection)+(sightYP*pVisionMultiplier),oPlayer,false,true);
	pVisionID[1] = collision_line(x+sightXP*.5,y+sightYP*.5,x+lengthdir_x(sightDistanceP,eDirection)+(sightXP*(pVisionMultiplier*.5)),y+lengthdir_y(sightDistance,eDirection)+(sightYP*(pVisionMultiplier*.5)),oPlayer,false,true);
	pVisionID[2] = collision_line(x-sightXP,y-sightYP,x+lengthdir_x(sightDistanceP,eDirection)-(sightXP*pVisionMultiplier),y+lengthdir_y(sightDistance,eDirection)-(sightYP*pVisionMultiplier),oPlayer,false,true);
	pVisionID[3] = collision_line(x-sightXP*.5,y-sightYP*.5,x+lengthdir_x(sightDistanceP,eDirection)-(sightXP*(pVisionMultiplier*.5)),y+lengthdir_y(sightDistance,eDirection)-(sightYP*(pVisionMultiplier*.5)),oPlayer,false,true);	
	var arrayLengthP = array_length(pVisionID);
	var checkP = false;
	for (var i = 0; i < arrayLengthP; ++i) {
	    if pVisionID[i] != noone {checkP = true;}
	}
		if (checkP) {
			seen = true;
			if (awareness <= 100) {
				awareness += pVisionAwarenessSpeed;
			}
		} else seen = false;
		#endregion

	//REPORTING
	return(seen);
}
function eHearing()
{
	#region SOFTHEARING
	var softNoiseID = collision_circle(x,y,softHearing,pNoise,false,true); //is pNoise in my radius
	if (softNoiseID != noone) { //is pNoise in my radius
		if (global.noise > 0) { //is the noise louder than the player's crouching
			heard = true;
			var colID = collision_line(x,y,pNoise.x,pNoise.y,oCol,false,true); //checks if there is a wall in between
			if (colID == noone) { //there is no wall between us
				if (global.noise > 0) && (global.noise <= oPlayer.crouchNoise) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed1;}} //making little noise
				if (global.noise > oPlayer.crouchNoise) && (global.noise <= oPlayer.walkNoise) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed2;}} //making some noise
				if (global.noise > oPlayer.walkNoise) && (global.noise <= 100) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed3;}} //making the most noise
			} else { //there is a wall between us, muffle it, raise awareness slower.
				if (global.noise > 0) && (global.noise <= oPlayer.crouchNoise * .5) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed1 * .5;}} //making little noise
				if (global.noise > oPlayer.crouchNoise) && (global.noise <= oPlayer.walkNoise * .5) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed2 * .5;}} //making some noise
				if (global.noise > oPlayer.walkNoise) && (global.noise <= 100 * .5) {if (awareness <= 100) {awareness += softNoiseAwarenessSpeed3 * .5;}} //making the most noise
			}
		} else heard = false;
	} //else heard = false;
	#endregion
	#region MEDIUMHEARING
	var mediumNoiseID = collision_circle(x,y,mediumHearing,pNoise,false,true);
	if (mediumNoiseID != noone) && (softNoiseID == noone){ //is pNoise in my radius
		if (global.noise > oPlayer.crouchNoise) { //is the noise louder than the player's crouching
			heard = true;
			var colID = collision_line(x,y,pNoise.x,pNoise.y,oCol,false,true); //checks if there is a wall in between
			if (colID == noone) { //there is no wall between us
				if (global.noise > oPlayer.crouchNoise) && (global.noise <= oPlayer.walkNoise) {if (awareness <= 100) {awareness += mediumNoiseAwarenessSpeed2;}} //making some noise
				if (global.noise > oPlayer.walkNoise) && (global.noise <= 100) {if (awareness <= 100) {awareness += mediumNoiseAwarenessSpeed3;}} //making the most noise
			} else { //there is a wall between us, muffle it, raise awareness slower.
				if (global.noise > oPlayer.crouchNoise) && (global.noise <= oPlayer.walkNoise * .5) {if (awareness <= 100) {awareness += mediumNoiseAwarenessSpeed2 * .5;}} //making some noise
				if (global.noise > oPlayer.walkNoise) && (global.noise <= 100 * .5) {if (awareness <= 100) {awareness += mediumNoiseAwarenessSpeed3 * .5;}} //making the most noise
			}
		} else heard = false;
	} //else heard = false;
	#endregion
	#region LOUDHEARING
	collision_circle(x,y,loudHearing,pNoise,false,true);
	var loudNoiseID = collision_circle(x,y,loudHearing,pNoise,false,true);
	if (loudNoiseID != noone) && (mediumNoiseID == noone) && (softNoiseID == noone) { //is pNoise in my radius
		if (global.noise > oPlayer.walkNoise) { //is the noise louder than the player's crouching
			heard = true;
			var colID = collision_line(x,y,pNoise.x,pNoise.y,oCol,false,true); //checks if there is a wall in between
			if (colID == noone) { //there is no wall between us
				if (global.noise >= oPlayer.runNoise) && (global.noise <= 100) {if (awareness <= 100) {awareness += loudNoiseAwarenessSpeed3;}} //making the most noise
			} else { //there is a wall between us, muffle it, raise awareness slower.
				if (global.noise >= oPlayer.runNoise) && (global.noise <= 100 * .5) {if (awareness <= 100) {awareness += loudNoiseAwarenessSpeed3 * .5;}} //making the most noise
			}
		} else heard = false;
	} 
	if ((loudNoiseID == noone) && (mediumNoiseID == noone) && (softNoiseID == noone)) heard = false; 
	#endregion
	
	return(heard);
}
function ePatrol()
{
	#region NORMAL BEHAVIOR
	if (sus < 1)
	{
	//START PATH
	if (path_index = -1)
	{
		path_start(myPath,myPathSpeed,myPathAction,true);
		if (myPathPosition != undefined)
		{
			path_position = myPathPosition;	
		}
	} else if (path_index != -1) && (pathChangeCollided)
	{
		path_start(myPath,myPathSpeed,myPathAction,true);
		if (myPathPosition != undefined)
		{
			path_position = myPathPosition;	
		}	
		pathChangeCollided = false;
	}
	
	if (awareness > 90) {
		returnX = path_get_x(myPath,path_position);
		returnY = path_get_y(myPath,path_position);
		myPathPosition = path_position;
		path_end();
		state = eState.chase;	
	}
	if (awareness > 50) && (awareness < 90) {
		returnX = path_get_x(myPath,path_position);
		returnY = path_get_y(myPath,path_position);
		myPathPosition = path_position;
		path_end();
		searchX = pNoise.x;
		searchY = pNoise.y;
		state = eState.search;
	}
	#endregion
	}
	if (sus >= 1)
	{
		#region AGGRESSIVE/SUSPICIOUS BEHAVIOR
			if (set == false)
			{
									show_debug_message("hi");

				if (instance_exists(oGoal))
				{
					var goalInst = instance_find(oGoal, irandom(instance_number(oGoal) - 1));
					show_debug_message("hi");
					set = true;
				}	
			}
			myPatrolPath = path_add();
			mp_grid_path(grid, myPatrolPath, x, y, goalInst.x, goalInst.y,false);
			if (path_index == -1)
			{
				path_start(myPatrolPath,agPatrolSpeed,path_action_stop,true);
			}
			
		if ((x < goalInst.x + 5) && (x > goalInst.x - 5) && (y < goalInst.y + 5) && (y > goalInst.y -5))
		{
			path_end();
			state = eState.investigate;
		}
		#endregion
		show_debug_message(goalInst);
	}
}
function eChase()
{
	////show_debug_message("chase");
	myChasePath = path_add();
	mp_grid_path(grid, myChasePath, x, y, oPlayer.x, oPlayer.y,false);
	path_start(myChasePath,chaseSpeed,path_action_stop,true);
	
	if (collision_circle(x,y,75,oPlayer,false,true) != noone)
	{
		path_end();
		state = eState.attack;	
	}
	
	if (awareness < 80) {
		searchX = oPlayer.x;
		searchY = oPlayer.y;
		path_end();
		state = eState.search;
	}
}
function eSearch() //going to sus location
{
	//GO TO HEARD LOCATION
	////show_debug_message("better check it out");	
	mySearchPath = path_add();
	mp_grid_path(grid, mySearchPath, x, y, searchX, searchY,false);
	if (path_index = -1)
	{
		sus ++;
		path_start(mySearchPath,searchSpeed,path_action_stop,true);
	}
	
	//CHECK IF I AM AT HEARD LOCATION
	if (x > searchX - 5) && (x < searchX + 5) && (y > searchY - 5) && (y < searchY + 5)
	{
		path_end();
		state = eState.investigate;
	}
	
	if (awareness > 90) {
		state = eState.chase;	
	}
}
function eInvestigate() //checking out the sus location
{
	////show_debug_message("investigating");
	timeline_index = tlEnemySearch;
	if (!timeline_running)
	{
		timeline_position = 0;
		timeline_running = true;	
	}
	
	//CHECK IF SEARCH SEQUENCE IS DONE then RETURN TO PATH
	if (timeline_position >= 360)
	{
		//RETURN TO PATH
		myReturnPath = path_add();
		mp_grid_path(grid, myReturnPath, x, y, returnX, returnY,false);
		if (path_index = -1)
		{
			path_start(myReturnPath,returnSpeed,path_action_stop,true);
		}	
		
		//CHECK IF RETURNED TO PATH, SWITCH STATE TO PATROL
		if (x < returnX + 5) && (x > returnX - 5) && (y < returnY + 5) && (y > returnY - 5)
		{
			state = eState.patrol;
		}
		
		if (awareness > 90) 
		{
			path_end();
			state = eState.chase;	
		}
		if (awareness > 50) && (awareness < 90) 
		{
			path_end();
			searchX = pNoise.x;
			searchY = pNoise.y;
			state = eState.search;
		}
	}
}
function eAttack()
{
	//show_debug_message("i'm attacking");
	myChasePath = path_add();
	mp_grid_path(grid, myChasePath, x, y, oPlayer.x, oPlayer.y,false);
	path_start(myChasePath,chaseSpeed,path_action_stop,true);
	if (place_meeting(x,y,oPlayer))
	{
		path_end();
		state = eState.chase;
	}
}
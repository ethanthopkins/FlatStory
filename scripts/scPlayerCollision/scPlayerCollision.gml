// Script assets have changed for v2.3.0 see
// https://help.yoyoGameManagers.com/hc/en-us/articles/360005277377 for more information
function scPlayerCol(playerSpeed)
{
	if (place_meeting(x+sign(hMove)*(playerSpeed),y,oCol)) || (place_meeting(x+sign(hMove)*(playerSpeed),y,oNPCCol)) || (place_meeting(x+sign(hMove)*(playerSpeed),y,oLockedGate)) hMove = 0;
	if (place_meeting(x,y+sign(vMove)*playerSpeed,oCol)) || (place_meeting(x,y+sign(vMove)*playerSpeed,oNPCCol)) || (place_meeting(x,y+sign(vMove)*playerSpeed,oLockedGate)) vMove = 0;
	if (instance_place(x,y,oRoomChange) != noone)//(place_meeting(x+sign(hMove)*(playerSpeed),y,oRoomChange)) //(place_meeting(x+1,y,oRoomChange)) || (place_meeting(x-1,y,oRoomChange)) || (place_meeting(x,y+1,oRoomChange)) || (place_meeting(x,y-1,oRoomChange))
	{
		roomObject = instance_place(x,y,oRoomChange);
		global.targetX = roomObject.X;
		global.targetY = roomObject.Y;
		//show_debug_message("id: " + string(roomObject) + " X: " + string(roomObject.X) + " Y: " + string(roomObject.Y));
		global.Room = roomObject.nextRoom; //set variable to the room. this will be used in the dialoguescript
		room_goto(asset_get_index(room_get_name(roomObject.nextRoom)));
	}
	scEnemyCol()
}

function scEnemyCol()
{
	//check collision and take damage
	if (!hidden)
	{
		if place_meeting(x,y,pEnemy) && (!hit)
		{
			oPlayer.playerHealth -= pEnemy.damage;	
			oPlayer.hit = true;
		} 
	}
	
	//check if not colliding so player can be hit again
	if !place_meeting(x,y,pEnemy) hit = false;
	
	//check for death
	if (playerHealth <= 0) death = true;
}
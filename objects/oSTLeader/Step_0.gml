if (global.story == 0)
{
	if (global.storyProgression == 1)
	{
		if (lead)
		{
			var loID = collision_circle(oSTLeader.x, oSTLeader.y, 200, oPlayer, false, true);
			var Speed = 4;
			if (loID != noone) && (!instance_exists(oSpeech))
			{
				with (oSTLeader)
				{
					if (room == rLevel1Room2)
					{
						//mp_potential_step(317, 740, Speed, false);
						mp_potential_step(oGameManager.oSTLeaderFollow.x, oGameManager.oSTLeaderFollow.y, Speed, false);						
						if (place_meeting(x,y,oRoomChange)) instance_destroy();
					}
					if (room == rLevel1Room1)
					{
						//mp_potential_step(317, 740, Speed, false);
						mp_potential_step(oGameManager.oSTLeaderFollow.x, oGameManager.oSTLeaderFollow.y, Speed, false);						
						if (place_meeting(x,y,oRoomChange)) instance_destroy();
					}
					if (room == rLevel1Room8)
					{
						mp_potential_step(oGameManager.oSTLeaderFollow.x, oGameManager.oSTLeaderFollow.y, Speed, false);
						if (place_meeting(x,y,oRoomChange)) instance_destroy();
					}
					if (room == rLevel1RoomChapel)
					{
						if (instance_exists(oGameManager.oSTLeaderFollow))
						{
							mp_potential_step(oGameManager.oSTLeaderFollow.x, oGameManager.oSTLeaderFollow.y, Speed, false);
							if (place_meeting(x,y,oRoomChange)) instance_destroy();
						}
					}
				}
			}			
		}
	}
}
function scSoundStateDecider()
{
	#region FOREST AMBIENCE CHANGE
	var arrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = twoForestRoomArray[i])
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion	
	#region WolfPine CHANGE
	var arrayLength = array_length(twoWolfPineRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = twoWolfPineRoomArray[i])
		{
			soundState = SoundState.QuietHope;	
		}
	}
	#endregion
	#region TELEPHONE CHANGE
		if (global.Room = rLevel2SaveRoom)
		{
			soundState = SoundState.TelephoneRing;	
		}
	#endregion	
	#region SKETCHTOWN CHANGE
	var arrayLength = array_length(oneSketchTownRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = oneSketchTownRoomArray[i])
		{
			soundState = SoundState.SketchTown;	
		}
	}
	#endregion
}
function scSoundStateSketchTown()
{
	#region FOREST AMBIENCE CHANGE
	var arrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = twoForestRoomArray[i])
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion
	#region CHAPEL MUTED CHANGE
		if (global.Room = rLevel1Room8)
		{
			soundState = SoundState.ChapelMuted;	
		}
	#endregion
	#region TELEPHONE CHANGE
		if (global.Room = rLevel2SaveRoom)
		{
			soundState = SoundState.TelephoneRing;	
		}
	#endregion
	
	if (soundState = SoundState.SketchTown)
	{
		switch (global.story)
		{
			case 0: switch (global.storyProgression) {
				case 0: scSoundManager(snSketchTownS0SP0); break;
				case 1: scSoundManager(snSketchTownS0SP1); break;
				case 2: scSoundManager(snSketchTownS0SP2); break;
			} break;
		}
	}
	snSoundPosition = audio_sound_get_track_position(soundID);	
}
function scSoundStateChapel()
{
	#region CHAPEL MUTED CHANGE
		if (global.Room = rLevel1Room8)
		{
			soundState = SoundState.ChapelMuted;
		}
	#endregion
	
	if (soundState = SoundState.Chapel)
	{
		scSoundManager(snReconcile);	
	}
	snSoundPosition = audio_sound_get_track_position(soundID);	
}
function scSoundStateChapelMuted()
{
	#region CHAPEL CHANGE
		if (global.Room = rLevel1RoomChapel)
		{
			soundState = SoundState.Chapel;
		}
	#endregion
	#region SKETCHTOWN CHANGE
	var arrayLength = array_length(oneSketchTownRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = oneSketchTownRoomArray[i])
		{
			soundState = SoundState.SketchTown;	
		}
	}
	#endregion
	
	if (soundState = SoundState.ChapelMuted)
	{
		scSoundManager(snReconcileMuted);	
	}
	snSoundPosition = audio_sound_get_track_position(soundID);	
}
function scSoundStateForestAmbience()
{
	#region TELEPHONE/CABIN AMBIENCE CHANGE
		if (!global.saveRoom1)
		{
			if (global.Room = rLevel2SaveRoom)
			{
				soundState = SoundState.TelephoneRing;	
			}
		} else 
		{
			if (global.Room = rLevel2SaveRoom)
			{
				soundState = SoundState.CabinAmbience;	
			}	
		}
	#endregion	
	#region WolfPine CHANGE
	var arrayLength = array_length(twoWolfPineRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = twoWolfPineRoomArray[i])
		{
			soundState = SoundState.QuietHope;	
		}
	}
	#endregion
	#region SKETCHTOWN CHANGE
	var arrayLength = array_length(oneSketchTownRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = oneSketchTownRoomArray[i])
		{
			soundState = SoundState.SketchTown;	
		}
	}
	#endregion
	
	if (soundState = SoundState.ForestAmbience)
	{
		scSoundManager(snForestAmbience);	
	}
}
function scSoundStateCabinAmbience()
{
	#region FOREST AMBIENCE CHANGE
	var arrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < arrayLength; i++)
	{
		if (global.Room = twoForestRoomArray[i])
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion
	
	if (soundState = SoundState.CabinAmbience)
	{
		scSoundManager(snCabinAmbience);	
	}
}
function scSoundStateTelephoneRing()
{
	#region FOREST AMBIENCE CHANGE
	var twoForestRoomArrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < twoForestRoomArrayLength; i++)
	{
		if (global.Room = twoForestRoomArray[i])
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion	
	#region THE OLD DAYS CHANGE
		if (global.saveNotification)
		{
			soundState = SoundState.TheOldDays;	
		}
	#endregion
	
	if (soundState = SoundState.TelephoneRing)
	{
		scSoundManager(snTelephoneRing);
	}
}
function scSoundStateQuietHope() 
{
	#region FOREST AMBIENCE CHANGE
	var twoForestRoomArrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < twoForestRoomArrayLength; i++)
	{
		if (global.Room = twoForestRoomArray[i])
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion	
	
	if (soundState = SoundState.QuietHope)
	{
		scSoundManager(snQuietHope);	
	}
}
function scSoundStateOldDays()
{
	#region FOREST AMBIENCE CHANGE
	var twoForestRoomArrayLength = array_length(twoForestRoomArray);
	for (var i = 0; i < twoForestRoomArrayLength; i++)
	{
		if ((global.Room = twoForestRoomArray[i]) || (!global.saveNotification))
		{
			soundState = SoundState.ForestAmbience;	
		}
	}
	#endregion	
	
	if (soundState = SoundState.TheOldDays)
	{
		scSoundManager(snTheOldDays);	
	}	
}
function scSoundManager(newSound)
{
	if (audio_is_playing(newSound) == false)
	{
		if (global.oldSound != undefined)
		{
			audio_stop_sound(global.oldSound);	
		}
		soundID = audio_play_sound(newSound,0,true);
		global.oldSound = newSound;
	}
	if (audio_sound_get_track_position(soundID) == 0) //if song position equals 0
	{
		audio_sound_set_track_position(soundID, snSoundPosition); //set it to the new position
	}
}
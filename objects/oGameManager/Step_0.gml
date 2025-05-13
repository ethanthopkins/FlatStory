/// @desc STORYLINE/SOUND MGR
switch (global.story)
{
	case 0: //NORMAL STORY
		switch (global.storyProgression)
		{
			case 0: scS0SP0(); break; //BEGINNING TO END OF FIREBEAST FIGHT
			case 1: scS0SP1(); break; //END OF FIREBEAST CAVE TO END OF SKETCHTOWN
			case 2: scS0SP2(); break; //END OF SKETCHTOWN TO END OF WOLFPINE
			case 3:
			case 4: 
			case 5:
			default: break;
		}
	case 1:
		switch (global.storyProgression)
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4: 
			case 5:
			default: break;
		}
	case 2:
		switch (global.storyProgression)
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4: 
			case 5:
			default: break;
		}
	default: break;
}
switch (soundState)
{
	case SoundState.Decider: scSoundStateDecider(); break;
	case SoundState.SketchTown: scSoundStateSketchTown(); break;
	case SoundState.Chapel: scSoundStateChapel(); break;
	case SoundState.ChapelMuted: scSoundStateChapelMuted(); break;
	case SoundState.ForestAmbience: scSoundStateForestAmbience(); break;
	case SoundState.CabinAmbience: scSoundStateCabinAmbience(); break;
	case SoundState.TelephoneRing: scSoundStateTelephoneRing(); break;
	case SoundState.TheOldDays: scSoundStateOldDays(); break;
	case SoundState.QuietHope: scSoundStateQuietHope(); break;
}
//show_debug_message(room_get_name(global.Room));
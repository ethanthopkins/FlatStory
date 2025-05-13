function scSoundManager(newSound)
{
	if (global.oldSound != undefined)
	{
		audio_stop_sound(global.oldSound);	
	}
	audio_play_sound(newSound,0,true);
	global.oldSound = newSound;
}
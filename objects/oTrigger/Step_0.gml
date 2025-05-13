if (stepExecuted) 
{
	if (!instance_exists(oDialogue))
	{
		oCamera.valueY = 0;
		oPlayer.movementPause = false;
		with (oFireBeast) 
		{
			path_end();
			mp_potential_step(302,-51,4,false);
		}
	}
}
if (instance_exists(oPlayer)) 
{
	if (collision_circle(x, y, global.sawRadius, oPlayer, false, true)) 
	{
		sawMode = true;
	} else sawMode = false;
}

sawMeterPercent = sawMeterProgress / sawMeter;
//show_debug_message(sawMeterPercent);
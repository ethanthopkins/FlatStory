// Script assets have changed for v2.3.0 see
// https://help.yoyoGameManagers.com/hc/en-us/articles/360005277377 for more information
function scPlayerNoise()
{
	if (instance_exists(pNoise))
	{
		if (place_meeting(x,y,pNoise))
		{
			if (hMove != 0) || (vMove != 0)
			{
				global.noise= global.noise+ pNoise.noiseAmount;
			} 
		}
	}
}
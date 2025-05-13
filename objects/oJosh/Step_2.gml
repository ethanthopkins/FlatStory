if (global.follow) //if lo passes the trigger
{
	//son follow father with a bit of randomness to show excitement
	mp_potential_step(oPlayer.x + choose(8,-8,16,-16),oPlayer.y - choose(48,54,64), oPlayer.movementsp * .75,false);		
}
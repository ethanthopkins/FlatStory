/*#region health
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(global.screenWidth*.1,global.screenHeight*.05,"Health: " + string(playerHealth));
#endregion
*/
if (death)
{
	scDrawSetText(fDefault,c_red,fa_center,fa_middle);
	draw_text(global.screenWidth*.5,global.screenHeight*.5, "You Died!");	
}
#region noise
scDrawSetText(fDefault,c_white,fa_right,fa_middle);
draw_text(global.screenWidth*.95,global.screenHeight*.05,"noise: " + string(global.noise));
#endregion
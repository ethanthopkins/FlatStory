/// @description Draw Battle Text
scDrawSetText(fDefault,c_white,fa_left,fa_middle);
draw_text(textX,textY0,"ATTACK");
draw_text(textX,textY1,"DEFEND");
draw_text(textX,textY2,"ITEM");
draw_text(textX,textY3,"FLEE");

if (!instance_exists(oSpeech))
{
	if (oPlayer.selectDown) 
	{
		selected ++;
		if (selected > 3)
		{
			selected = 0;	
		}
	}
	if (oPlayer.selectUp) 
	{
		selected --;
		if (selected < 0)
		{
			selected = 3;	
		}
	}
	if (oPlayer.activate)
	{
		optionSelected = selected;	
		scSaySomething(oBattle.id);
	}
}

var arrowPos;
switch (selected)
{
	case 0: arrowPos = textY0; break;
	case 1: arrowPos = textY1; break;
	case 2: arrowPos = textY2; break;
	case 3: arrowPos = textY3; break;
}
draw_arrow(textX - 30, arrowPos, textX - 10, arrowPos, 10);
#region HEALTH
	var playerHealthPercentage = oPlayer.playerHealth / oPlayer.playerMaxHealth;
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
		draw_text(global.screenWidth * .5, global.screenHeight * .05, string(oPlayer.playerHealth) + "/" + string(oPlayer.playerMaxHealth));
	draw_set_color(c_white);
		draw_rectangle(global.screenWidth * .3, global.screenHeight * .1, global.screenWidth * .7, global.screenHeight * .15, true);
	draw_set_color(c_red);
		draw_rectangle(global.screenWidth * .3, global.screenHeight * .1, (global.screenWidth * .3) + ((global.screenWidth * .4) * playerHealthPercentage), global.screenHeight * .15, false);
#endregion

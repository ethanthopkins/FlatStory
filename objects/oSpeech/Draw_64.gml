draw_set_color(c_black)
draw_rectangle(global.screenWidth*.1,global.screenHeight*.9,global.screenWidth*.9,global.screenHeight*.6,false);
draw_set_color(global.textColor)
draw_rectangle(global.screenWidth*.1,global.screenHeight*.9,global.screenWidth*.9,global.screenHeight*.6,true);
if (global.talker != undefined) draw_sprite(global.talker,0,global.screenWidth*.15,draw_y);
scDrawSetText(fDefault,c_white,fa_center,fa_middle);
if (global.name != undefined) draw_text(global.screenWidth*.175,global.screenHeight*.6,string(global.name));
if (textProgress <= length)
{
	textProgress += global.textSpeed;
}
scDrawSetText(global.font,global.textColor,fa_right,fa_middle);
 //how far to offset the text
for (var i = 1; i <= length; ++i) 
{
	var xOffset = random_range(-global.intensity,global.intensity);
	if (global.wave)
	{
		var yOffset = dsin(360*current_time/1000 + i*15);
	} else var yOffset = 0;
	
	//TURN STRING INTO ARRAY
	var str = 0;
	str[i] = string_char_at(global.msg[current], i);
	//GET POSITION OF CHAR IN STRING
	var strPos = string_pos(str[i],global.msg[current]);
	//GET PX LENGTH OF STRING AS IT'S WRITTEN
	length_so_far=string_width(string_copy(global.msg[current],1,i));	
    //DRAW TEXT CHARACTER BY CHARACTER
	if (textProgress > i)	
	{
		var sLength = string_width(global.msg[current]);
		////show_debug_message("length_so_far: " + string(length_so_far) + "width: " + string(width));
		
		//IF THE LENGTH SO FAR IS GREATER THEN THE TEXT BOX
		var strLength = string_copy(global.msg[current],1,i);
		if (length_so_far >= width) 
		{
			if (!set3)
			{
				if (string_copy(global.msg[current],1,strPos) == strLength)
				{
					var lastLetter = string_char_at(strLength,string_length(strLength));
					lastLetterPos = strPos;
					set3 = true;
				}	
			}
		}
		if (sLength >= width)
		{
			//GET THE LAST LETTER
			if (!set2)
			{
			//	//show_debug_message("strLength: " + string(strLength) + " & strPos: " + string(string_copy(global.msg[current],1,strPos)));
				set2 = true;
			}
			////show_debug_message(lastLetterPos);
			if (string_char_at(global.msg[current],lastLetterPos) == " ")
			{			
				var j = i;
				var sLength_so_far;
				sLength_so_far=string_width(string_copy(global.msg[current],1,j))
				////show_debug_message("sLength_so_far: " + string(sLength_so_far) + " & last letter width: " + string(string_width(string_copy(global.msg[current],1,lastLetterPos))));//string(string_char_at(global.msg[current],lastLetterPos)));
			if (sLength_so_far >= string_width(string_copy(global.msg[current],1,lastLetterPos)))
				{
					if (!set1)
					{	
						diff = length_so_far - width;
						////show_debug_message(string(diff));
						set1 = true;
					}
					
						draw_text(
						draw_x+sLength_so_far+xOffset-string_width(string_copy(global.msg[current],1,lastLetterPos)),
						global.screenHeight*.8 + yOffset + xOffset,
						str[j] 
					);
				} else
				{
					draw_text(
					draw_x+length_so_far+xOffset,
					draw_y+yOffset+xOffset,
					str[i],
					);
				}
			}else
			{ 
				if (lastLetterPos != 0)
				{
					lastLetterPos --;
				}
				draw_text(
				draw_x+length_so_far+xOffset,
				draw_y+yOffset+xOffset,
				str[i],
				);
			}
		} else
		{
			draw_text(
			draw_x+length_so_far+xOffset,
			draw_y+yOffset+xOffset,
			str[i],
			);
		}
	}
}
if (current + 1 == arrayLength)
{
	if (global.responseOne != undefined) && (global.responseTwo != undefined) 
	{
		draw_set_halign(fa_left);
		draw_text(global.screenWidth * .75, global.screenHeight * .7, global.responseOne);
		draw_text(global.screenWidth * .75, global.screenHeight * .8, global.responseTwo);
			
		var optionSelected;
		optionSelected[0] = global.screenHeight * .7;
		optionSelected[1] = global.screenHeight * .8;
	
	if (oPlayer.selectUp) || (oPlayer.selectDown)
	{
		if (oPlayer.selectUp) {global.choice --;}
		if (oPlayer.selectDown)	{global.choice ++;}
	}
	if (global.choice > 1) {global.choice = 0;}
	if (global.choice < 0) {global.choice = 1;}
		
	draw_set_halign(fa_right);
	draw_arrow(global.screenWidth * .7, optionSelected[global.choice], global.screenWidth * .74, optionSelected[global.choice], 10);
	}
}
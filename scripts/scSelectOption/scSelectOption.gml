function scSelectOption(numberOfOptions, verticleMenu,xPosition,yPosition,option0,option1,option2,option3,option4,option5,option6,option7,option8,option9)
{
	if (verticleMenu = true) global.verticleMenu = true; else global.verticleMenu = false;
	if (global.verticleMenu)
	{
		menuArray = array_create(numberOfOptions, undefined); //menu = ds_grid_create(1,numberOfOptions);
		for (var i = 0; i < numberOfOptions; ++i) 
		{
			if i = 0 menuArray[i] = option0;
		    if i = 1 menuArray[i] = option1;
			if i = 2 menuArray[i] = option2;
			if i = 3 menuArray[i] = option3;
			if i = 4 menuArray[i] = option4;
			if i = 5 menuArray[i] = option5;
			if i = 6 menuArray[i] = option6;
			if i = 7 menuArray[i] = option7;
			if i = 8 menuArray[i] = option8;
			if i = 9 menuArray[i] = option9;
		}
		instance_create_layer(0,0,"Dialogue",oMenu);
		oMenu.slotHeightSpace = ((global.screenHeight-yPosition) / (numberOfOptions + 1));
		oMenu.numberOptions = numberOfOptions;
		oMenu.slotX = xPosition;
		oMenu.yPosition = yPosition;
		return(menuArray);
	}
	else
	{
		menuArray = array_create(numberOfOptions, undefined);
		for (var i = 0; i < numberOfOptions; ++i) 
		{
			if i = 0 menuArray[i] = option0;
		    if i = 1 menuArray[i] = option1;
			if i = 2 menuArray[i] = option2;
			if i = 3 menuArray[i] = option3;
			if i = 4 menuArray[i] = option4;
			if i = 5 menuArray[i] = option5;
			if i = 6 menuArray[i] = option6;
			if i = 7 menuArray[i] = option7;
			if i = 8 menuArray[i] = option8;
			if i = 9 menuArray[i] = option9;
		}
		instance_create_layer(0,0,"Dialogue",oMenu);
		oMenu.slotWidthSpace = global.screenWidth / (numberOfOptions+1);
		oMenu.numberOptions = numberOfOptions;
		oMenu.slotY = yPosition;
		oMenu.xPosition = xPosition;
		return(menuArray);
	}
}
function scSelectMovement(numberOfOptions)
{
	////show_debug_message("selectMove script executing");
	activate = keyboard_check_pressed(vk_space);	
	if (global.verticleMenu)
	{
		var up = keyboard_check_pressed(ord("W"));
		var down = keyboard_check_pressed(ord("S"));
		var select = keyboard_check_pressed(vk_space);
		var vSelectMovement = (down - up);
		oMenu.optionSelected += sign(vSelectMovement)
		if (oMenu.optionSelected > numberOfOptions-1) oMenu.optionSelected = 0;
		if (oMenu.optionSelected < 0) oMenu.optionSelected = numberOfOptions-1;
		if (select)
		{
			switch (oMenu.optionSelected)
			{
				case 0 : scDestroyMenu(); room_goto(rLevel1Room3); break;
				case 1 : scDestroyMenu(); room_goto(rLevel2SaveRoom); break;
				case 2 : scDestroyMenu(); room_goto(rLevel3Hotel3); break;
				case 3 : scDestroyMenu(); room_goto(rLevel4Room1); break;
				case 4 : scDestroyMenu(); room_goto(rLevel5Room1); break;
			}

			////show_debug_message(room_get_name(room));
		}
	}
	else 
	{
		var left = keyboard_check_pressed(ord("A"));
		var right = keyboard_check_pressed(ord("D"));
		var select = keyboard_check_pressed(vk_space);
		var	hSelectMovement = (right - left);
		oMenu.optionSelected += sign(hSelectMovement)
		if (oMenu.optionSelected > numberOfOptions) oMenu.optionSelected = 0;
		if (oMenu.optionSelected < 0) oMenu.optionSelected = numberOfOptions;
		if (select)
		{
			instance_destroy(oMenu);
			instance_destroy(oStartMenu);
			room_goto(rLevel1Room1);
			
		}
	}
}
function scDestroyMenu()
{
	instance_destroy(oStartMenu);
	instance_destroy(oMenu);
}
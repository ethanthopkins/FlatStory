scDrawSetText(fDefault,c_white,fa_center,fa_middle);
if (global.verticleMenu)
{
	var stringLen = string_width(string(global.menuArray[optionSelected])); 
	draw_arrow(slotX-(stringLen*.9),(slotHeightSpace*(optionSelected+1))+yPosition,slotX-stringLen*.6,(slotHeightSpace*(optionSelected+1))+yPosition,10);
	draw_text(slotX,slotHeightSpace+yPosition,global.menuArray[0]); 
	if ((numberOptions - 1) > 0) draw_text(slotX,(slotHeightSpace*2)+yPosition,global.menuArray[1]);
	if ((numberOptions - 2) > 0) draw_text(slotX,(slotHeightSpace*3)+yPosition,global.menuArray[2]);
	if ((numberOptions - 3) > 0) draw_text(slotX,(slotHeightSpace*4)+yPosition,global.menuArray[3]);
	if ((numberOptions - 4) > 0) draw_text(slotX,(slotHeightSpace*5)+yPosition,global.menuArray[4]);
	if ((numberOptions - 5) > 0) draw_text(slotX,(slotHeightSpace*6)+yPosition,global.menuArray[5]);
	if ((numberOptions - 6) > 0) draw_text(slotX,(slotHeightSpace*7)+yPosition,global.menuArray[6]);
	if ((numberOptions - 7) > 0) draw_text(slotX,(slotHeightSpace*8)+yPosition,global.menuArray[7]);
	if ((numberOptions - 8) > 0) draw_text(slotX,(slotHeightSpace*9)+yPosition,global.menuArray[8]);
	if ((numberOptions - 9) > 0) draw_text(slotX,(slotHeightSpace*10)+yPosition,global.menuArray[9]);
}
else
{
	var stringLen = string_width(string(global.menuArray[optionSelected])); 
	draw_arrow(slotX,(slotHeightSpace*(optionSelected+1))+xPosition,slotX-stringLen*.1,(slotHeightSpace*(optionSelected+1))+xPosition,10);
	draw_text(slotWidthSpace+xPosition,slotY,global.menuArray[0]);
	if ((numberOptions - 1) > 0) draw_text((slotWidthSpace*2)+xPosition,slotY,global.menuArray[1]);
	if ((numberOptions - 2) > 0) draw_text((slotWidthSpace*3)+xPosition,slotY,global.menuArray[2]);
	if ((numberOptions - 3) > 0) draw_text((slotWidthSpace*4)+xPosition,slotY,global.menuArray[3]);
	if ((numberOptions - 4) > 0) draw_text((slotWidthSpace*5)+xPosition,slotY,global.menuArray[4]);
	if ((numberOptions - 5) > 0) draw_text((slotWidthSpace*6)+xPosition,slotY,global.menuArray[5]);
	if ((numberOptions - 6) > 0) draw_text((slotWidthSpace*7)+xPosition,slotY,global.menuArray[6]);
	if ((numberOptions - 7) > 0) draw_text((slotWidthSpace*8)+xPosition,slotY,global.menuArray[7]);
	if ((numberOptions - 8) > 0) draw_text((slotWidthSpace*9)+xPosition,slotY,global.menuArray[8]);
	if ((numberOptions - 9) > 0) draw_text((slotWidthSpace*10)+xPosition,slotY,global.menuArray[9]);
}
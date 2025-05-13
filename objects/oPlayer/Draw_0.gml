draw_self();
if (Direction == 0) || (Direction == 180)
{
	draw_line(x,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
	draw_line(x,y-activateWidth,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
	draw_line(x,y+activateWidth,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
}
if (Direction == 90) || (Direction == 270)
{
	draw_line(x,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
	draw_line(x-activateWidth,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
	draw_line(x+activateWidth,y,x+lengthdir_x(activateDistance,Direction),y+lengthdir_y(activateDistance,Direction));
}
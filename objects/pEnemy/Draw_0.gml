draw_self();
if (debugLines)
{
	//SIGHT
	draw_set_color(c_white);
	draw_line(x,y,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection));
	draw_line(x+sightX,y+sightY,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection));
	draw_line(x-sightX,y-sightY,x+lengthdir_x(sightDistance,eDirection),y+lengthdir_y(sightDistance,eDirection));
	
	//pSIGHT
	draw_set_color(c_green);
	draw_line(x+sightXP,y+sightYP,x+lengthdir_x(sightDistanceP,eDirection)+(sightXP*pVisionMultiplier),y+lengthdir_y(sightDistance,eDirection)+(sightYP*pVisionMultiplier));
	draw_line(x+sightXP*.5,y+sightYP*.5,x+lengthdir_x(sightDistanceP,eDirection)+(sightXP*(pVisionMultiplier*.5)),y+lengthdir_y(sightDistance,eDirection)+(sightYP*(pVisionMultiplier*.5)));
	draw_line(x-sightXP,y-sightYP,x+lengthdir_x(sightDistanceP,eDirection)-(sightXP*pVisionMultiplier),y+lengthdir_y(sightDistance,eDirection)-(sightYP*pVisionMultiplier));
	draw_line(x-sightXP*.5,y-sightYP*.5,x+lengthdir_x(sightDistanceP,eDirection)-(sightXP*(pVisionMultiplier*.5)),y+lengthdir_y(sightDistance,eDirection)-(sightYP*(pVisionMultiplier*.5)));
	
	//COLLISION CHECK
	var distanceToPlayer = distance_to_point(oPlayer.x,oPlayer.y);
	draw_set_color(c_aqua);
	draw_line(x,y,x+lengthdir_x(distanceToPlayer,eDirection),y+lengthdir_y(distanceToPlayer,eDirection));
	
	//HEARING
	draw_set_color(c_green);
	draw_circle(x,y,softHearing,true);
	draw_set_color(c_yellow);
	draw_circle(x,y,mediumHearing,true);
	draw_set_color(c_red);
	draw_circle(x,y,loudHearing,true);
	
	//PATHFINDING
	if (myChasePath != undefined) draw_path(myChasePath,x,y,true);
	if (mySearchPath != undefined) draw_path(mySearchPath,x,y,true);
}
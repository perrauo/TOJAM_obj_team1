/// @description move with mouse

if (point_distance(x,y,mouse_x,mouse_y) < my_spd)
{
	x = mouse_x;
	y = mouse_y;
}

else
{
	var dir = point_direction(x,y,mouse_x,mouse_y);
	var dx = lengthdir_x(my_spd,dir);
	var dy = lengthdir_y(my_spd,dir);
	
	if (!place_meeting(x+dx,y,obj_house))
		x += dx;
	if (!place_meeting(x,y+dy,obj_house))
		y += dy;
}
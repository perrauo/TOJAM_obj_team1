/// @description move wih mouse

if (point_distance(x,y,mouse_x,mouse_y) < my_spd)
{
	x = mouse_x;
	y = mouse_y;
}

else
{
	var dir = point_direction(x,y,mouse_x,mouse_y);
	x += lengthdir_x(my_spd,dir);
	y += lengthdir_y(my_spd,dir);
}
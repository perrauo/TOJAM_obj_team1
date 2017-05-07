/// @description Insert description here

if (mode <> playerMode.packup ||
	mode <> playerMode.selling ||
	mode <> playerMode.setup)
{
	var dir = point_direction(other.x,other.y,x,y);
	var push_pow = max(0.2,my_spd/2);
	var dx = lengthdir_x(push_pow,dir);
	var dy = lengthdir_y(push_pow,dir);

	if (!place_meeting(x+dx,y,obj_house))
	{
		x += dx;
	}

	if (!place_meeting(x,y+dy,obj_house))
	{
		y += dy;
	}
}
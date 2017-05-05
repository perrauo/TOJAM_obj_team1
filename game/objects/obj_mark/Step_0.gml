/// @description Insert description here
// You can write your code in this editor

switch (mode)
{
	case 0:
		direction += random_range(-5,5);
		my_spd = 0.5;
		break;
		
	case 1:
	{
		if (point_distance(x,y,obj_player.x,obj_player.y) > 64)
			my_spd = 1;
		else
			my_spd = 0;
		direction = point_direction(x,y,obj_player.x,obj_player.y);

		break;
	}
}

if (my_spd <> 0)
{
	var dx = lengthdir_x(my_spd,direction);
	var dy = lengthdir_y(my_spd,direction);
	
	if (!place_meeting(x+dx,y,obj_house))
		x += dx;
	if (!place_meeting(x,y+dy,obj_house))
		y += dy;
}
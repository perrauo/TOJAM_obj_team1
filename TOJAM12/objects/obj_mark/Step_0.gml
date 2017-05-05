/// @description Insert description here
// You can write your code in this editor

switch (mode)
{
	case markMode.idle:
	case markMode.sold:
		direction += random_range(-5,5);
		my_spd = 1;
		break;
		
	case markMode.interested:
	{
		if (point_distance(x,y,obj_player.x,obj_player.y) > 64)
			my_spd = 2;
		else
		{
			my_spd = 0;
			buy_timer++;
			
			if (buy_timer > max_buy_time)
			{
				mode = 2;
				buy_timer = 0;
				direction = point_direction(obj_player.x,obj_player.y,x,y);
				alarm[0] = 300;
			}
		}
		direction = point_direction(x,y,obj_player.x,obj_player.y);

		break;
	}
	
	case markMode.angry:
	{
		if (point_distance(x,y,obj_player.x,obj_player.y) > 64)
			my_spd = 2;
		else
		{
			my_spd = 0;
			/*buy_timer++;
			
			if (buy_timer > max_buy_time)
			{
				mode = 2;
				buy_timer = 0;
				direction = point_direction(obj_player.x,obj_player.y,x,y);
				alarm[0] = 300;
			}*/
		}
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
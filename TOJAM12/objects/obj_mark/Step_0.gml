/// @description Insert description here
// You can write your code in this editor

switch (mode)
{
	case markMode.idle:
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
				
				var num_houses = instance_number(obj_house);
				var n = irandom(num_houses-1);
				var home = instance_find(obj_house,n);
				
				tar_x = home.x+32;
				tar_y = home.y+32;
			}
		}
		direction = point_direction(x,y,obj_player.x,obj_player.y);

		break;
	}
	
	case markMode.sold:
	{
		direction = point_direction(x,y,tar_x,tar_y);
		my_spd = 1;
		
		if (point_distance(x,y,tar_x,tar_y) < my_spd)
		{
			x = tar_x;
			y = tar_y;
			mode = markMode.angry;
		}
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
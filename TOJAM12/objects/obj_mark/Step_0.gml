/// @description Insert description here
// You can write your code in this editor

if (instance_exists(obj_kiosk))
{
	if (mode == markMode.idle && point_distance(x,y,obj_kiosk.x,obj_kiosk.y) < 256)
	{
		//alarm[0] = 180;
		tar_x = obj_player.x;
		tar_y = obj_player.y;
		mp_grid_path(global.town_grid,my_path,x,y,tar_x,tar_y,true);
		path_point_index = 0;
		local_tar_x = path_get_point_x(my_path,path_point_index);
		local_tar_y = path_get_point_y(my_path,path_point_index);
		mode = markMode.interested;
	}

	else if (mode == markMode.interested &&	point_distance(x,y,obj_kiosk.x,obj_kiosk.y) > 256)
	{
		alarm[0] = -1;
		mode = markMode.idle;
	}
}

else
{
	if (mode == markMode.interested)
	{
		alarm[0] = -1;
		mode = markMode.idle;
	}	
}

switch (mode)
{
	case markMode.idle:
		direction += random_range(-5,5);
		my_spd = .5;
		buy_timer = max(0,buy_timer-1);
		break;
		
	case markMode.interested:
	{
		if (point_distance(x,y,obj_player.x,obj_player.y) > 64)
		{
			my_spd = 2;
			
			if (point_distance(x,y,local_tar_x,local_tar_y) < 16)
			{
				path_point_index++;
				local_tar_x = path_get_point_x(my_path,path_point_index);
				local_tar_y = path_get_point_y(my_path,path_point_index);
			}
			mp_potential_step_object(local_tar_x,local_tar_y,my_spd,obj_house);
		}
		
		else
		{
			my_spd = 0;
			buy_timer++;
			
			if (buy_timer > max_buy_time)
			{
				mode = markMode.sold;
				buy_timer = 0;
				global.money += 1;
				global.dignity = min(global.dignity+0.5,100);
				audio_play_sound(choose(snd_register1,snd_register2),25,0);
				//direction = point_direction(obj_player.x,obj_player.y,x,y);
				
				var num_houses = instance_number(obj_house);
				var n = irandom(num_houses-1);
				var home = instance_find(obj_house,n);
				
				alarm[0] = -1;
				my_house = home;
				tar_x = home.x+32;
				tar_y = home.y+32;
				mp_grid_path(global.town_grid,my_path,x,y,tar_x,tar_y,true);
				path_point_index = 0;
				local_tar_x = path_get_point_x(my_path,path_point_index);
				local_tar_y = path_get_point_y(my_path,path_point_index);
			}
		}
		//direction = point_direction(x,y,obj_player.x,obj_player.y);

		break;
	}
	
	case markMode.sold:
	{
		//direction = point_direction(x,y,tar_x,tar_y);
		my_spd = 1;
		
		if (point_distance(x,y,tar_x,tar_y) < 16)
		{
			with (my_house)
			{
				ds_queue_enqueue(occupants,global.cur_step+300);
			}
			instance_destroy();
		}
		
		else if (point_distance(x,y,local_tar_x,local_tar_y) < 16)
		{
			path_point_index++;
			local_tar_x = path_get_point_x(my_path,path_point_index);
			local_tar_y = path_get_point_y(my_path,path_point_index);
		}
		
		mp_potential_step_object(local_tar_x,local_tar_y,my_spd,obj_house);
		break;
	}
	
	case markMode.angry:
	{
		var dis = point_distance(x,y,obj_player.x,obj_player.y);
		
		if (dis < 32)
		{
			my_spd = 0;
			angry_timer = min(max_angry_time,angry_timer+1);
			if (can_punch)
			{
				global.dignity--;
				can_punch = false;
				alarm[3] = 15;
				obj_player.alarm[3] = 15;
				audio_play_sound(snd_punch,50,0);
			}
			direction = point_direction(x,y,obj_player.x,obj_player.y);
		}
		
		else if (dis < 256)
		{
			my_spd = 3;
			angry_timer = min(max_angry_time,angry_timer+1);
			direction = point_direction(x,y,obj_player.x,obj_player.y);
		}

		else
		{
			direction += random_range(-5,5);
			my_spd = 1;
			angry_timer--;
			
			if (angry_timer <= 0)
			{
				mode = markMode.idle;
				obj_town.num_angry--;
			}
		}
		
		break;
	}
}

if (my_spd <> 0 && mode <> markMode.emerged && mode <> markMode.interested && mode <> markMode.sold)
{
	var dx = lengthdir_x(my_spd,direction);
	var dy = lengthdir_y(my_spd,direction);
	
	if (!place_meeting(x+dx,y,obj_house))
		x += dx;
	if (!place_meeting(x,y+dy,obj_house))
		y += dy;
}
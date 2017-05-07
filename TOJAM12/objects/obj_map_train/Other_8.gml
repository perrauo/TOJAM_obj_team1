/// @description Insert description here

if (dir == 1)
{
	if (cur_path <> (global.dest_city-1+global.numb_towns) mod global.numb_towns)
	{
		if (cur_path == global.numb_towns-1)
			cur_path = 0;
		else
			cur_path++;
		path_start(obj_ctrl_map.track_path[cur_path],8,0,1);
	}
	
	else
	{
		switch (global.dest_city)
		{
			case 0:
				room_goto(room_town1);
				break;
			default:
				room_goto(room_town2);
				break;
		}
		audio_stop_sound(snd_train);
		audio_stop_sound(snd_whistle1);
		audio_stop_sound(snd_whistle2);
		
		global.cur_town = obj_ctrl_map.unvisited_list[| (cur_path+1+global.numb_towns) mod global.numb_towns].town_name;
	}
}

if (dir == -1)
{
	if (cur_path <> global.dest_city)
	{
		cur_path--;
		path_start(obj_ctrl_map.track_path[cur_path],0,0,1);
		
		path_speed = -4;
		path_position = 1;
	}
}
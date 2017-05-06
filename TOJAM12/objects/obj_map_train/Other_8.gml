/// @description Insert description here

if (dir == 1)
{
	if (cur_path <> (global.dest_city-1+global.numb_towns) mod global.numb_towns)
	{
		if (cur_path == global.numb_towns-1)
			cur_path = 0;
		else
			cur_path++;
		path_start(obj_ctrl_map.track_path[cur_path],4,0,1);
	}
	
	else
	{
		switch (global.dest_city)
		{
			case 0:
				room_goto(room_town1);
				break;
			case 1:
				room_goto(room_town2);
				break;
		}
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
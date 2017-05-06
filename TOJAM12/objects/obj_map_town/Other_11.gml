/// @description change train destination
// You can write your code in this editor


//if clicked
if(mouse_check_button_pressed(mb_any))
{
	if (obj_map_train.can_command)
	{
		pulse =  0; //reset pulse val to pulse again
		pulse_size = .5;

		with (obj_map_train)
		{
			if (dir == 1)
			{
				dest_city = other.my_path_index;
				can_command = false;
				cur_path = (cur_path+1+global.numb_towns) mod global.numb_towns;
				path_start(obj_ctrl_map.track_path[cur_path],4,path_action_stop,true);
			}
		}
	}
	//global.map_destination_name = town_name; // change dest
	//obj_map_train.path_found = false;
	
	//TODO CHANGE: WHEN TRAIN ARRIVE THERE
	//room_goto(asset_get_index("room_town"));

}

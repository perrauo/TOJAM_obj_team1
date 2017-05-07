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
				cur_path = (global.dest_city+0+global.numb_towns) mod global.numb_towns;
				global.dest_city = other.my_path_index;
				can_command = false;
				path_start(obj_ctrl_map.track_path[cur_path],8,path_action_stop,true);
				audio_play_sound(snd_train,50,true);
				audio_play_sound(choose(snd_whistle1,snd_whistle2),50,false);
			}
		}
	}
	//global.map_destination_name = town_name; // change dest
	//obj_map_train.path_found = false;
	
	//TODO CHANGE: WHEN TRAIN ARRIVE THERE
	//room_goto(asset_get_index("room_town"));

}

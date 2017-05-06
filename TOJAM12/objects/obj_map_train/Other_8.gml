/// @description Insert description here

if (cur_path < 5-1)
{
	cur_path++;
	path_start(obj_ctrl_map.track_path[cur_path],0,0,1);
	path_position = 1;
	path_speed = -4;
	path_endaction = path_action_stop;
}
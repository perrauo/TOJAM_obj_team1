/// @description Insert description here
// You can write your code in this editor

init_track_network = false;

numb_towns = 6;
min_dist = 128; //min dist from other town or borders

//queue containing the tracks to move the train forward on the track (contains obj_map_track s)
global.queue_traj_front = ds_queue_create(); 
//queue containing the tracks to move the train backward on the track
global.queue_traj_back = ds_queue_create(); 



if(!variable_global_exists("perm_map_layout")) //create layout if not exist
global.perm_map_layout = array_create(18, noone); //(name, posx, posy)


if(global.perm_map_layout[0] == noone) //if layout dosent exist
{
	event_user(0); //first init
	global.map_curr_town_name = global.perm_map_layout[0];
	
	global.map_destination_name = global.map_curr_town_name; //initially set dest as current
	//it changes if a town is clicked
		
}
else
{
	event_user(1); //already created
}
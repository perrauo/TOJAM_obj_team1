/// @description Insert description here
// You can write your code in this editor

if(!step_init)//after network is initialized
{

  var town = town_curr; //so we dont access a variable which isnt defined in the track

	var track = noone;
	with(obj_map_track)//for each track
	{
		if(obj_map_track.bordering_town != noone)
		{
			if(obj_map_track.bordering_town.town_name == town.town_name)
			{
				track = obj_map_track;
			}
		}
	}
	track_curr = track;
		
	x = track_curr.x;
	y = track_curr.y;

step_init = true;	
}

//show_debug_message(global.map_curr_town_name+ " curr town")
//show_debug_message(global.map_destination_name+ " dest");

var dist_leftRight = 0; //actual units to move
var dist_upDown = 0; //actual units to move

if (!path_found)
{
	//move train if new town selected
	if(global.map_destination_name != global.map_curr_town_name)//TODO; saved popped tracks in order to move back
	{
		//get rid of start track
		//the first left or right track is always the start track: so we can remove it safely
		var track = ds_queue_dequeue(global.queue_traj_front);
	
		if(track.track_dir == "LEFT" || track.track_dir == "RIGHT")
		ds_queue_dequeue(global.queue_traj_front);//remove it
	
		//get next track
		track = ds_queue_head(global.queue_traj_front);
		
	
		while(track.bordering_town == noone) || (track.bordering_town.town_name != global.map_destination_name)//while not arrived to dest
		{
			if(track.bordering_town != noone)
			{
				show_debug_message(track.bordering_town.town_name);
			}
			else
				show_debug_message(track.track_dir);
	
			if(track.track_dir == "RIGHT")
			dist_leftRight += 32; //increase dist to travel by 32 to the right
			if(track.track_dir == "LEFT")
			dist_leftRight -= 32; //increase dist to travel by 32 to the right
			if(track.track_dir == "DOWN")
			dist_upDown += 32; //increase dist to travel by 32 to the right
			if(track.track_dir == "UP")
			dist_upDown -= 32; //increase dist to travel by 32 to the right
	
			track = ds_queue_dequeue(global.queue_traj_front);
				
		}//end while
		
		if (track.bordering_town.town_name == global.map_destination_name)
			path_found = true;
	}
	
	else
		path_found = true;
}

//distance to travel
//show_debug_message(string(dist_leftRight)+ " LEFT RIGHT");
//show_debug_message(string(dist_upDown) + " UP DOWN");

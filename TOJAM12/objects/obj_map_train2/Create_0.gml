/// @description init
// You can write your code in this editor

step_init = false; //init post track network created
path_found = false;
depth = -500; //change depth to be on top


//assign current town
town_curr = noone;
track_curr = noone;

	//get curr town id
	var town = noone;
	with(obj_map_town)
	{
		if(obj_map_town.town_name == global.map_curr_town_name) //one of the town match the curr town name: save its id
		{
			town = obj_map_town;
	
		}

	}
	town_curr = town; //assign correct id

	
	





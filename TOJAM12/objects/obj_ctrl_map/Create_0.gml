/// @description Insert description here

randomize();

// create towns

numb_towns = 6;
min_dist = 128;
unvisited_list = ds_list_create();

for (var i=0; i<numb_towns-1; i++)
	track_path[i] = 0;

var done, xx, yy;

for (var i=0; i<numb_towns; i++)
{
	done = false;
	
	while (!done)
	{
		xx = irandom_range(32,room_width-32) div 64 * 64+32;
		yy = irandom_range(32,room_height-32) div 64 * 64+32;
	
		if (!collision_circle(xx,yy,min_dist,obj_map_town,false,true))
		{
			var t = instance_create_depth(xx,yy,0,obj_map_town);
			ds_list_add(unvisited_list,t);
			done = true;
		}
	}
}

// order towns
visited_list = ds_list_create();

var cur_index = 0;

while (ds_list_size(unvisited_list) > ds_list_size(visited_list))
{
	var cur_town = unvisited_list[| cur_index];
	var num_towns = ds_list_size(unvisited_list);
	var min_dist = 10000000;
	var closest_town = noone;

	for (var i=0; i<num_towns; i++)
	{
		if (unvisited_list[| i] == cur_town ||
			ds_list_find_index(visited_list,unvisited_list[| i]) <> -1)
			continue;
		else
		{
			var cur_dist = point_distance(cur_town.x,cur_town.y,unvisited_list[| i].x,unvisited_list[| i].y);
			if (cur_dist < min_dist)
			{
				min_dist = cur_dist;
				closest_town = i;
			}
		}
	}

	ds_list_add(visited_list,unvisited_list[| closest_town]);
	cur_index = closest_town;
}

// connect towns

map_grid = mp_grid_create(0,0,room_width div 32 + 1, room_height div 32 + 1,32,32);

var cur_index = 0;
var num_towns = ds_list_size(visited_list);

for (var i=0; i<num_towns-1; i++)
{
	track_path[i] = path_add();
	mp_grid_path(map_grid,track_path[i],visited_list[| i].x,visited_list[| i].y,
				 visited_list[| i+1].x,visited_list[| i+1].y,false);
}

ds_list_destroy(unvisited_list);

// create train
my_train = instance_create_depth(0,0,-1,obj_map_train);

with (my_train)
{
	path_start(other.track_path[0],4,path_action_reverse,true);
}
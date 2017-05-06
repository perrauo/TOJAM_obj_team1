/// @description Insert description here

randomize();

// create towns

global.numb_towns = 2;
min_dist = 128;
unvisited_list = ds_list_create();

for (var i=0; i<global.numb_towns; i++)
	track_path[i] = 0;
	
var town_names = ds_list_create();

ds_list_add(town_names,"Goodville");
ds_list_add(town_names,"Folktown");
ds_list_add(town_names,"Harrisonburry");
ds_list_add(town_names,"Jamescorn");
ds_list_add(town_names,"Minesweep");
ds_list_add(town_names,"Montrebble");
ds_list_add(town_names,"Russlebrown")
ds_list_add(town_names,"Ordinarycity");
ds_list_add(town_names,"Goatharbour");
ds_list_add(town_names,"Herbsandcheese");
ds_list_add(town_names,"Beeflocks");
ds_list_add(town_names,"Indeputy");

ds_list_shuffle(town_names);

var done, xx, yy;

for (var i=0; i<global.numb_towns; i++)
{
	/*done = false;
	
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
	}*/
	var done = false;
	
	if (!done)
	{
		xx = (room_width/2 + dcos(360/global.numb_towns*i+irandom_range(-5,5)) *
			 256 + irandom_range(-32,32) +
			 (room_width/2-256-128) * dcos(360/global.numb_towns*i)) div 64 * 64+32;
		
		yy = (room_height/2 + dsin(360/global.numb_towns*i+irandom_range(-5,5)) * 
		     256 + irandom_range(-32,32)) div 64 * 64+32;
	
		if (!collision_circle(xx,yy,min_dist,obj_map_town,false,true))
		{
			var t = instance_create_depth(xx,yy,0,obj_map_town);
			t.town_name = town_names[| i];
			t.my_path_index = i;
			ds_list_add(unvisited_list,t);
			done = true;
		}
	}
}

ds_list_destroy(town_names);

// order towns
/*visited_list = ds_list_create();

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
}*/

// connect towns

map_grid = mp_grid_create(0,0,room_width div 64 + 1, room_height div 64 + 1,64,64);

var cur_index = 0;
var num_towns = ds_list_size(unvisited_list);

for (var i=0; i<num_towns-1; i++)
{
	track_path[i] = path_add();
	mp_grid_path(map_grid,track_path[i],unvisited_list[| i].x,unvisited_list[| i].y,
				 unvisited_list[| i+1].x,unvisited_list[| i+1].y,false);
}
	track_path[num_towns-1] = path_add();
	mp_grid_path(map_grid,track_path[num_towns-1],unvisited_list[| num_towns-1].x,unvisited_list[| num_towns-1].y,
				 unvisited_list[| 0].x,unvisited_list[| 0].y,false);

//ds_list_destroy(unvisited_list);

// create train
my_train = instance_create_depth(0,0,-100,obj_map_train);

with (my_train)
{
	path_start(other.track_path[global.dest_city],0,0,1)
}
mp_grid_destroy(map_grid);
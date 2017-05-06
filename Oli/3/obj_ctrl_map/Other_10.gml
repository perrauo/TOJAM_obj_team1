/// @description first init
// You can write your code in this editor

randomize(); 

var town_list = ds_list_create();


ds_list_add(town_list,"Goodville");
ds_list_add(town_list,"Folktown");
ds_list_add(town_list,"Harrisonburry");
ds_list_add(town_list,"Jamescorn");
ds_list_add(town_list,"Minesweep");
ds_list_add(town_list,"Montrebble");
ds_list_add(town_list,"Russlebrown")
ds_list_add(town_list,"Ordinarycity");
ds_list_add(town_list,"Goatharbour");
ds_list_add(town_list,"Herbsandcheese");
ds_list_add(town_list,"Beeflocks");
ds_list_add(town_list,"Indeputy");
//TODO add more

for(k = 0; k<19; k+=3) //repeat for every town added
{
	var _range = ds_list_size(town_list); //range to retrieve name from
	var index = random_range(0,_range);

	var town_name = ds_list_find_value(town_list, index);//get town name
	ds_list_delete(town_list, index);//delete from the list
	
	var flag = true; //flag if no good spot is found
	
		
	while(flag) //while not suitable pos found
	{	
	var posx = irandom_range(min_dist, room_width-min_dist);
	var posy = irandom_range(min_dist, room_height-min_dist);
			
		//if point is near another town
		if !collision_rectangle(posx-min_dist, posy-min_dist, posx+min_dist, posy+min_dist, obj_map_town, false, false)
		{
			flag = false;
		}
			
				
	}
	
		//once good spot it found: place town
			var town = instance_create_depth(posx, posy,0, obj_map_town);
			town.town_name = town_name; //give correct name
			
			global.perm_map_layout[k] = town_name;
			global.perm_map_layout[k+1] = posx;
			global.perm_map_layout[k+2] = posy;
		
}

//destroy list once not needed
ds_list_destroy(town_list);











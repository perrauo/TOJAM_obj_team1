/// @description 
// You can write your code in this editor

if(!init_track_network)
{

var list_already_added = ds_list_create();
var town_first =  instance_find(obj_map_town,0);

ds_list_add(list_already_added, town_first);// add first town


var curr_track_posx = town_first.x;
var curr_track_posy = town_first.y+64;


while(ds_list_size(list_already_added) <= numb_towns)
{
	var town_cur_index = ds_list_size(list_already_added)-1;
	var town_curr = ds_list_find_value(list_already_added, town_cur_index);
		
	//show_debug_message(town_cur_index);
	//show_debug_message(town_curr.town_name);
		
	//ignore self by moving it
	town_curr.x += 100000;
	with(town_curr)
	{
		var town_next = instance_nearest(x-100000,y,obj_map_town) //default next (closest & not self)
		while(ds_list_find_index(list_already_added, town_next) != -1) //while not already added
		{
			town_next.x += 100000;//displace nearest to look for another one
			town_next = instance_nearest(x-100000,y,obj_map_town); //look for second closest
		}
	
	}
	//move town curr to normal pos
	town_curr.x -= 100000;
	
	//move back all the towns we displaced
	for(k= 0; k<ds_list_size(list_already_added); k++)
	{
		var town_moved = ds_list_find_value(list_already_added, k);
		if(town_moved.x > 10000) //if move back needed
		town_moved.x -= 100000; //move back 
		
	}
	
		//destination of the next town in the itinary
	var dest_posx = town_next.x;
	var dest_posy = town_next.y+64;
	
	var first_track = true; //first track added after a town is reached
	//used to determine tracks with specific stations associated with them
	
		
	
	while(!scr_is_between(curr_track_posx,dest_posx-16,+dest_posx+16)) //add hor tracks
	{
		var t = instance_create_depth(curr_track_posx, curr_track_posy, -200, obj_map_track);
		if(first_track)
		{
			t.bordering_town = town_curr; 
			first_track = false
		}
		ds_queue_enqueue(global.queue_traj_front , t); //add track to trajectory q
				
					
		if(dest_posx> curr_track_posx) //if dest pos is to the right
		{	
			t.track_dir = "RIGHT";
			curr_track_posx += 32;
		}
		else //if to the left
		{
			t.track_dir = "LEFT";
			curr_track_posx -= 32;
					
		}
		
	}
		
	while(!scr_is_between(curr_track_posy,dest_posy-16,+dest_posy+16)) //add vert tracks
	{
		var t = instance_create_depth(curr_track_posx, curr_track_posy, -200, obj_map_track);
		if(first_track)
		{
			t.bordering_town = town_curr; 
			first_track = false
		}
		ds_queue_enqueue(global.queue_traj_front, t); //add track to traj stk
			
		if(dest_posy > curr_track_posy) //if dest pos is to the bottom
		{
			t.track_dir = "DOWN";
			curr_track_posy += 32;
			
		}
		else //if to the top
		{
			t.track_dir = "UP";
			curr_track_posy -= 32;
				
		}
	
	
	}
	
		
	//add destination to "already added list" once arrived
	ds_list_add(list_already_added, town_next);// add first town
	
	if(ds_list_size(list_already_added) == numb_towns+1) //last track added
	{//(also need to give it a bordering town)
		
		t.bordering_town = town_next;
				
	}
	
}



init_track_network = true; //track network has been init
}//end netwrk init

//instance_create_layer(curr_track_posx, curr_track_posy, global.layer_background, obj_track);
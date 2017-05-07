/// @description Insert description here
// You can write your code in this editor

/*leave_timer++;
if (leave_timer > 60)
{
	with (obj_house)
	{
		obj_town.num_angry += ds_queue_size(occupants);
	}

	with (obj_mark)
	{
		if (mode == markMode.sold)
			obj_town.num_angry++;
	}

	global.anger_level[global.dest_city] = obj_town.num_angry / obj_town.num_people;
	leave_timer = 0;
	room_goto(room_map);
}*/


//transition to the map if reaches the border
with (obj_house)
{
	obj_town.num_angry += ds_queue_size(occupants);
}

with (obj_mark)
{
	if (mode == markMode.sold)
		obj_town.num_angry++;
}

global.anger_level[global.dest_city] = obj_town.num_angry / obj_town.num_people;
	
var map = asset_get_index("room_map");
room_goto(map);



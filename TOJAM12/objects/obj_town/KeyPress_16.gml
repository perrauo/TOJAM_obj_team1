/// @description Insert description here

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

room_goto(room_map);
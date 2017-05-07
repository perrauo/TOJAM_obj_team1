/// @description Insert description here

with (obj_house)
{
	obj_town.num_angry += ds_queue_size(occupants);
	global.anger_level[0] = obj_town.num_angry / obj_town.num_people;
}

room_goto(room_map);
/// @description Insert description here

while (ds_queue_size(occupants) > 0 && ds_queue_head(occupants) <= global.cur_step)
{
	var m = instance_create_depth(x+32,y+32,-(y+32),obj_mark);
	m.mode = markMode.emerged;
	m.alarm[2] = 60;
	m.alarm[1] = 600;
	ds_queue_dequeue(occupants);
}
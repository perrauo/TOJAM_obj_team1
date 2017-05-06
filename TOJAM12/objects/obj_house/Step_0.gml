/// @description Insert description here

while (ds_queue_size(occupants) > 0 && ds_queue_head(occupants) <= global.cur_step)
{
	instance_create_depth(x,y,depth-1,obj_oh_noez);
	ds_queue_dequeue(occupants);
}
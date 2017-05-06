/// @description Insert description here

	var m = instance_create_depth(x+32,y+32,-(y+32),obj_mark);
	m.mode = markMode.emerged;
	m.alarm[2] = 60;
	m.alarm[1] = 600;
	
	instance_destroy();
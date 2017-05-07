/// @description Insert description here

	var m = instance_create_depth(x+32,y+32,-(y+32),obj_mark);
	m.mode = markMode.emerged;
	m.alarm[2] = 60;
	m.angry_timer = m.max_angry_time;
	obj_town.num_angry++;
	audio_play_sound(choose(snd_cow1,snd_cow2,snd_cow3,snd_cow4),25,0);
	instance_destroy();
/// @description Insert description here
// You can write your code in this editor

global.cur_step++;



	//timers update
	if(timer1 >= lim1)
	{
		timer1 = 0;
		
		var rm_index = asset_get_index("room_menu");
		room_goto(rm_index); //goto to the room
		
		exit;//exit event
				
	}
	timer1 += delta_time/1000;
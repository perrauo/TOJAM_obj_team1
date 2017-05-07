/// @description GO back to menu
// You can write your code in this editor

application_surface_draw_enable(true) //turn back on application_surface_draw

	highscore_add(global.player_name, global.money);
		
	var ind = asset_get_index("room_menu");
	room_instance_add(ind, room_width/3, 0+100, obj_gameover);
	room_goto(ind);

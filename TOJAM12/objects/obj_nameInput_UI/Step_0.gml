/// @description Insert description here
// You can write your code in this editor

//CONFIRM NAME
	if keyboard_key == vk_enter
	{
		global.player_name = input_text;
		var rm_index = asset_get_index("room_map");
		
		show_debug_message(rm_index);
		
		audio_stop_all();
		audio_play_sound(mus_main,100,true);
		room_goto(rm_index); //goto to the room
		

		
		exit;//exit event
    }

	
	if keyboard_check_pressed(vk_backspace)
	{
		var last_ltr = string_length(input_text);
		input_text = string_delete(input_text, last_ltr, 1)
    }
	else//change the input text
	if (keyboard_lastkey != -1) && (string_length(input_text)< name_maxchar)
	{
	 var s = string_upper(keyboard_lastchar);
	 if(string_letters(s)!= "")
	 {
	 input_text += s;
	 keyboard_lastkey = -1;
	 }
	}
		
	
	//make caret blink
	
	//timers update
	if(timer1 >= lim1)
	{
		timer1 = 0;
		
		//blink
		if(caret_alpha == 1)
		caret_alpha = 0;
		else
		caret_alpha = 1;
	
	}
	timer1 += delta_time/1000;

	
		
	
/// @description button clicked
// You can write your code in this editor


//if clicked
if(mouse_check_button_pressed(mb_any))
{
	pulse =  0; //reset pulse val to pulse again
	pulse_size = .5;

	//destroy leaderboard UI
	instance_destroy();
	with(obj_menu_UI)
	{
		instance_destroy();
	}
	
	//instance create leaderboard
	instance_activate_all();
}

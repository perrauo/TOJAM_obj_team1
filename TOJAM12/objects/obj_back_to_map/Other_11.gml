/// @description change train destination
// You can write your code in this editor


//if clicked
if(mouse_check_button_pressed(mb_any))
{
	pulse =  0; //reset pulse val to pulse again
	pulse_size = .5;
	
	//go back to map
	room_goto(asset_get_index("room_map"));

}

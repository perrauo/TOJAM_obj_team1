/// @description open up GUI
// You can write your code in this editor

if(mouse_check_button_pressed(mb_any))
{
	pulse =  0; //reset pulse val to pulse again
	pulse_size = .5;


	if(!instance_exists(obj_kiosk_UI)) //if ui isnt created : create
	instance_create_layer(obj_kiosk.x-100, obj_kiosk.y-128, global.layer_UI, obj_kiosk_UI)// create UI at depth -2000
	else
	{	//if clicked again //destroy UI
		with(obj_kiosk_UI)
		{
			instance_destroy();
		}
		
	}



}
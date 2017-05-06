/// @description pulse kiosk size
// You can write your code in this editor

if(!pulse_over)
{
	
	if(pulse > pi)
	{
		pulse_over = true;
	}
	
	scale = 1+sin(pulse)*pulse_size;
	
	image_xscale = scale; 
	image_yscale = scale;
	
	
	pulse += .5;
	

}
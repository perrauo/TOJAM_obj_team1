/// @description pulse kiosk size
// You can write your code in this editor

if(!pulse_over)
{
	
	if(pulse > pi)
	{
		pulse_over = true;
		pulse = 0;
	}
	
	scale = 1+sin(pulse);
	
	image_xscale = scale; 
	image_yscale = scale;
	//hello
	
	pulse += .5;
	

}
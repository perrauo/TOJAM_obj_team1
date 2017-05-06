/// @description Insert description here
// You can write your code in this editor



//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.

//detect mouse
if collision_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom, obj_mouse, false, false)
{
	if(pulse<pi)
	{
	pulse_over =  false; //set pulse to be donee
	}
	
	mouse_on_top = true;
}
else
{
pulse = 0;
mouse_on_top = false
}		
		
//if pulse is over then set to non click size (.2)
if(pulse_over)
{
	pulse_size= .2;
}


//do pulse if needed
event_user(0);


//if mouse on top open up GUI is clicked
if(mouse_on_top)
event_user(1);


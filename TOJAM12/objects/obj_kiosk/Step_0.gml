/// @description Insert description here
// You can write your code in this editor

//detect mouse
for(i = bbox_top; i<bbox_bottom; i++)
{
	for(j = bbox_left; j<bbox_right; j++)
	{
		if(mouse_x==j && mouse_y ==i)
		{
			mouse_on_top = true;
			pulse_over =  false; //set pulse to be donee
			
			break;
						
		}
		else
		mouse_on_top = false;
		
	}
	
	if(mouse_on_top)
	break;
}


//do pulse if needed
event_user(0);
/// @description Insert description here
// You can write your code in this editor

//image_angle = direction;
show_debug_message(direction);

if!(direction== 90)||(direction ==270)
{
	
if(scr_is_between(direction, 270, 360) ||  scr_is_between(direction, 0, 90))
xscale = 1;
else
xscale = -1;

}
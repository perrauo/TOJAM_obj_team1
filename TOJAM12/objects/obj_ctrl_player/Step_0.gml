/// @description endstate (NO more dignity)
// You can write your code in this editor

//TODO remove debug condition
if(global.dignity <= 0) || (keyboard_check_pressed(ord("Z")))
{
	//if alarm not set set it (at that point well initiate transition)
		if(alarm_get(0) == -1)
		{ 
				alarm_set(0,300);
		}
		
		if(!instance_exists(obj_dropping_gameover))
		{
		//add physical ground for dropping game over
		instance_create_depth(0, room_height/2, -1000,obj_physics_ground);	
		//add dropping game over
		instance_create_depth(room_width/3, -200, -1000,obj_dropping_gameover);	
		}
}
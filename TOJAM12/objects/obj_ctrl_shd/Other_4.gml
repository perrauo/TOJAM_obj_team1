/// @description Insert description here
// You can write your code in this editor


//Game surfaces (TODO update when screen is resized)
surface_screen1 = surface_create(view_get_wport(view_current), view_get_hport(view_current));

//transition in
//save curr time
time = current_time;

		
with(obj_ctrl_shd)//apply shd
{
	toggle_shd_transition_in = true
}
//end init trans in
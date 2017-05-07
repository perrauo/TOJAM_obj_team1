/// @description Insert description here
// You can write your code in this editor


//shaders applied to main application_surface
//if(toggle_shd_...)
//shader_set(shd_...) e.g changes position of pixels
//...

draw_surface(application_surface,0,0); //draw application surface;


if(toggle_shd_transition)
shader_set(toggle_shd_transition)
draw_surface(surface_screen1,0,0); //draw screen overlay
//reset shaders so that they dot get applied elsewhere
shader_reset();


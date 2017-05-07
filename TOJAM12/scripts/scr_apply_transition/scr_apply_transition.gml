/// @description apply a shockwave shader
/// @param xpos
/// @param ypos

shader_set(shd_flash);//set shader so we can apply uniif

///////////mouse position
var xpos = argument0;
var ypos = argument1;

uParams[0] = xpos; //set as parameter
uParams[1] = ypos;

var u_click = shader_get_uniform(shd_flash, "u_cl_pos");
shader_set_uniform_f_array(u_click,uParams);


////////////Time since clicked
//save time
var fE = argument2; //amount frames elapsed since click

var u_framesElapsed = shader_get_uniform(shd_flash,"u_framesElapsed");//set curr time as unif

shader_set_uniform_f(u_framesElapsed, fE);

shader_reset();//reset shader after script is over



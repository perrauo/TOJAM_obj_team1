/// @description transition
// You can write your code in this editor


//Min dist for transition
min_dist = 50;

//calculate dist frm borders of the room 
var dist_from_bottom = y;
var dist_from_top = room_height -y;
var dist_from_left = x;
var dist_from_right = room_width -x;


var dist = noone;
if(dist_from_bottom<min_dist)
dist = dist_from_bottom;

if(dist_from_top<min_dist)
dist = dist_from_top;

if(dist_from_left<min_dist)
dist = dist_from_left;

if(dist_from_right<min_dist)
dist = dist_from_right;



if(dist != noone)
{
shader_set(shd_approach_bord);//set shader so we can apply uniif
var u_min_dist = shader_get_uniform(shd_approach_bord,"u_min_dist");//set curr time as unif
shader_set_uniform_f(u_min_dist, min_dist);

var u_dist = shader_get_uniform(shd_approach_bord,"u_dist");//set curr time as unif
shader_set_uniform_f(u_dist, dist);

shader_reset();

obj_ctrl_shd.toggle_shd_approach_bord = true;
}
else
obj_ctrl_shd.toggle_shd_approach_bord = false;
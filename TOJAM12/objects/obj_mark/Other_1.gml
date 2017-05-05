/// @description Insert description here
// You can write your code in this editor

var dir = point_direction(x,y,room_width/2,room_height/2);
var push_pow = 0.2;
var dx = lengthdir_x(push_pow,dir);
var dy = lengthdir_y(push_pow,dir);

if (!place_meeting(x+dx,y,obj_house))
{
	x += dx;
}

if (!place_meeting(x,y+dy,obj_house))
{
	y += dy;
}

direction -= 180;
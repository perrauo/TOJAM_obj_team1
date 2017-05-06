/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index, 0,x,y);

blu = c_blue;

//draw bordering town in post draw
if(bordering_town != noone)
draw_text_color(x,y,bordering_town.town_name, blu,blu,blu,blu,1);
/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,0,x,y);
//draw_text(x,y,string(depth));

var occ = ds_queue_size(occupants);

if (occ > 0)
{
	draw_set_font(fnt_hotel_number);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(x+48,y-64,string(occ));
}
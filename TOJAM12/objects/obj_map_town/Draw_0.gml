/// @description Insert description here
// You can write your code in this editor

/// @description draw Town
// You can write your code in this editor

draw_sprite_ext(sprite_index,0,x,y, scale, scale,0,c_white,1);
draw_set_color(c_white);
draw_set_font(fnt_hotel_number);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_text(tn_posx,tn_posy,town_name);
draw_text(x,y-64,string(my_path_index));
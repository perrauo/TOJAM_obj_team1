/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_title);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text(16,16,"$" + string(global.money));

draw_set_font(fnt_hotel_number);
draw_text(16,80,"Rage: " + string_format(global.anger_level[global.dest_city]*100,3,0) + "%\n" +
				"Dignity: " + string_format(global.dignity,3,0) + "%");
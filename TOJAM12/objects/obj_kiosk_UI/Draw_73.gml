/// @description draw UI components
// You can write your code in this editor

//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.


w = c_white;
b = c_black;

draw_set_font(fnt_small);
draw_sprite_ext(sprite_index, 0,x,y,1,1,0,c_white,.5);

//drawing prod name
draw_set_alpha(name_box_alpha);
draw_rectangle_color(name_posx, name_posy, name_posx+name_width,name_posy+name_height,w,w,w,w, false);
draw_text_color(name_posx,name_posy, obj_kiosk.prod_name,b,b,b,b,.5); 
draw_set_alpha(1); //reset norma alpha

//drawing prod price
draw_set_alpha(price_box_alpha);
draw_rectangle_color(price_posx, price_posy, price_posx+ price_width, price_posy+price_height,w,w,w,w, false);
draw_text_color(price_posx, price_posy, "$ "+ obj_kiosk.prod_price+".00",b,b,b,b,.5); 
draw_set_alpha(1); //


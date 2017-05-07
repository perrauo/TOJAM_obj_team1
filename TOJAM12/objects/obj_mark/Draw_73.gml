/// @description draw main sprite

draw_sprite(sprite_index,image_index,x,y);

if (shirt_spr <> -1)
{
	draw_sprite(shirt_spr,image_index,x,y);
}

if (buy_timer > 0)
{
	draw_healthbar(x-16,y-70,x+16,y-64,buy_timer/max_buy_time*100,c_silver,c_aqua,c_aqua,0,true,true);
}
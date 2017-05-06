/// @description draw main sprite

switch (mode)
{
	case markMode.idle:
	case markMode.interested:
		draw_sprite(sprite_index,image_index,x,y);
		break;
		
	case markMode.sold:
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,$80FF80,1);
		break;
	
	case markMode.emerged:
	case markMode.angry:
		draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,$8080FF,1);
		break;
}

if (buy_timer > 0)
{
	draw_healthbar(x-16,y-70,x+16,y-64,buy_timer/max_buy_time*100,c_silver,c_aqua,c_aqua,0,true,true);
}
/// @description draw main sprite

switch (mode)
{
	case 0:
	case 1:
		draw_sprite(sprite_index,0,x,y);
		break;
		
	case 2:
		draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_lime,1);
		break;
	
	case 3:
		draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_red,1);
		break;
}

if (buy_timer > 0)
{
	draw_healthbar(x-16,y-70,x+16,y-64,buy_timer/max_buy_time*100,c_silver,c_aqua,c_aqua,0,true,true);
}
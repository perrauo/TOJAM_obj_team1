/// @description draw main sprite

draw_sprite(sprite_index,image_index,x,y);

if (mode == playerMode.setup)
{
	draw_healthbar(x-16,y-70,x+16,y-64,(45-alarm[0])/45*100,c_silver,c_lime,c_lime,0,true,true);	
}

else if (mode == playerMode.packup)
{
	draw_healthbar(x-16,y-70,x+16,y-64,(45-alarm[1])/45*100,c_silver,c_lime,c_lime,0,true,true);	
}
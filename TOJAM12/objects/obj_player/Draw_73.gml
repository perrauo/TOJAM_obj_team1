/// @description draw main sprite

if (alarm[3] <> -1)
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,merge_color(c_white,$8080FF,alarm[3]/15),1);
else
	draw_sprite(sprite_index,image_index,x,y);

if (mode == playerMode.setup)
{
	draw_healthbar(x-16,y-70,x+16,y-64,(45-alarm[0])/45*100,c_silver,c_lime,c_lime,0,true,true);	
}

else if (mode == playerMode.packup)
{
	draw_healthbar(x-16,y-70,x+16,y-64,(45-alarm[1])/45*100,c_silver,c_lime,c_lime,0,true,true);	
}

if (alarm[2] <> -1)
{
	draw_set_alpha(min(1,alarm[2]/60));
	draw_sprite(spr_arrow,0,x,y-64);
	draw_set_alpha(1);
}
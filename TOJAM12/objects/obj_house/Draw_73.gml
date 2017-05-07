/// @description Insert description here
// You can write your code in this editor

draw_sprite(sprite_index,0,x,y);
//draw_text(x,y,string(depth));

var occ = ds_queue_size(occupants);

if (occ > 0)
{
	for (var i=0; i<occ; i++)
	{
		draw_sprite(spr_counter,0,x+i*16+(96-16*(occ-1))/2,y-64);
	}
}
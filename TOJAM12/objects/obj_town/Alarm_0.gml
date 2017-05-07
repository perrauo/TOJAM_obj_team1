/// @description Insert description here

var done = 0;

while (done < 20)
{
	var yy = irandom_range(32,room_height-32);
	if (!collision_line(0,yy,room_width,yy,obj_house,false,true))
		done = 20;
	else
		done++;
}
	
var tw = instance_create_depth(0,yy,0,obj_tumbleweed);
tw.depth = -y;

alarm[0] = 240;
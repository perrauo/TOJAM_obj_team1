/// @description create town

randomize();
mp_potential_settings(180,5,4,true);
global.town_grid = mp_grid_create(0,0,room_width div 32 + 1, room_height div 16 + 1,32,16);
global.cur_step = 0;

num_houses = 20;
num_people = 20;

var count = 0;

while (count < num_houses)
{
	var xx = irandom(room_width-48) div 48 * 48;
	var yy = irandom(room_height-64) div 64 * 64;
	
	if (!collision_rectangle(xx,yy,xx+96,yy+64,obj_house,false,true))
	{
		instance_create_depth(xx,yy,-yy,obj_house);
		count++;
	}
}

count = 0;

while (count < num_people)
{
	var xx = irandom_range(32,room_width-32);
	var yy = irandom_range(16,room_height-16);
	
	if (!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_mark,false,true) && 
		!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_house,false,true))
	{
		instance_create_depth(xx,yy,-yy,obj_mark);
		count++;
	}
}

mp_grid_add_instances(global.town_grid,obj_house,false);
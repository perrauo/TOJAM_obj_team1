/// @description create town

randomize();

global.cur_step = 0;

num_houses = 10;
num_people = 20;

var count = 0;

while (count < num_houses)
{
	var xx = irandom(room_width-64);
	var yy = irandom(room_height-64);
	
	if (!collision_rectangle(xx,yy,xx+64,yy+64,obj_house,false,true))
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
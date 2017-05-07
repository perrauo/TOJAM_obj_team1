/// @description Insert description here

show_debug_message(string(room));

var count = 0;

while (count < num_people)
{
	var roll = random(1);
	
	if (roll < global.anger_level[0])
	{
		if (choose(0,1))
		{
			var xx = irandom_range(32,room_width-32);
			var yy = irandom_range(16,room_height-16);
	
			if (!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_mark,false,true) && 
				!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_house,false,true))
			{
				var m = instance_create_depth(xx,yy,-yy,obj_mark);
				m.mode = markMode.emerged;
				m.alarm[2] = 60;
				m.angry_timer = m.max_angry_time;
				num_angry++;
				count++;
			}
		}
		
		else
		{
			var h = instance_find(obj_house,irandom(num_houses-1));
			count++;
			ds_queue_enqueue(h.occupants,60+irandom(360));
		}
	}

	else
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
}

count = 0

while (count < 1)
{
	var xx = irandom_range(32,room_width-32);
	var yy = irandom_range(16,room_height-16);
	
	if (!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_mark,false,true) && 
		!collision_rectangle(xx-32,yy-16,xx+32,yy+16,obj_house,false,true))
	{
		instance_create_depth(xx,yy,-yy,obj_player);
		count++;
	}
}
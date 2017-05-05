/// @description Insert description here

if (is_selling)
{
	is_selling = false;
	instance_destroy(obj_kiosk);
	with (obj_mark)
	{
		if (mode < 2)
		{
			alarm[0] = -1;
			mode = markMode.idle;
		}
	}
}

else
{
	is_selling = true;
	instance_create_depth(x,y,-y,obj_kiosk);
	with (obj_mark)
	{
		//alarm[0] = 180;
		tar_x = obj_player.x;
		tar_y = obj_player.y;
		mp_grid_path(global.town_grid,my_path,x,y,tar_x,tar_y,true);
		path_point_index = 0;
		local_tar_x = path_get_point_x(my_path,path_point_index);
		local_tar_y = path_get_point_y(my_path,path_point_index);
		mode = markMode.interested;
	}
}
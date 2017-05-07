/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);
draw_set_alpha(0.5);

for (var i=0; i<global.numb_towns; i++)
{
	if (path_exists(track_path[i]))
	{
		//draw_path(track_path[i],0,0,true);
		var num_points = path_get_number(track_path[i]);
	
		for (var j=0; j<num_points-1; j++)
		{
			draw_line_width(path_get_point_x(track_path[i],j),path_get_point_y(track_path[i],j),
							path_get_point_x(track_path[i],j+1),path_get_point_y(track_path[i],j+1),
							8)
			//draw_circle(path_get_point_x(track_path[i],j),path_get_point_y(track_path[i],j),4,false);
		}
	}
}

draw_set_alpha(1);
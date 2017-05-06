/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_white);

for (var i=0; i<numb_towns-1; i++)
{
	if (path_exists(track_path[i]))
		draw_path(track_path[i],0,0,true);
		
	var num_points = path_get_number(track_path[i]);
	
	for (var j=0; j<num_points; j++)
	{
		draw_circle(path_get_point_x(track_path[i],j),path_get_point_y(track_path[i],j),4,false);
	}
}
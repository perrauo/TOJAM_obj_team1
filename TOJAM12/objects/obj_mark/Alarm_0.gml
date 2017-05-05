/// @description Insert description here

tar_x = obj_player.x;
tar_y = obj_player.y;
mp_grid_path(global.town_grid,my_path,x,y,tar_x,tar_y,true);
path_point_index = 0;
local_tar_x = path_get_point_x(my_path,path_point_index);
local_tar_y = path_get_point_y(my_path,path_point_index);
alarm[0] = 180;
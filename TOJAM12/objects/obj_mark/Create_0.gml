/// @description Insert description here
// You can write your code in this editor

direction = random(360);
mode = 0;
my_spd = 0.5;
buy_timer = 0;
max_buy_time = 60;
angry_timer = 0;
max_angry_time = 540;
my_path = path_add();
torch_guy = choose(true,false);

tar_x = 0;
tar_y = 0;
local_tar_x = 0;
local_tar_y = 0;
path_point_index = 0;

shirt_spr = -1;
shirt_index = 1;
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
can_punch = true;

tar_x = 0;
tar_y = 0;
local_tar_x = 0;
local_tar_y = 0;
path_point_index = 0;

shirt_spr = -1;
shirt_index = choose(0,1,2);

hat_index = -1;
hat_spr = -1;

kerchief_index = -1;
kerchief_spr = -1;

face_spr = -1;

item_spr = -1;
item_index = -1;
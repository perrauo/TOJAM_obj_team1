/// @description Insert description here




global.cur_step = 0;
global.money = 0;
global.player_name = "";
global.dest_city = 0;
global.numb_towns = 4;
global.dignity = 50;
global.gameover = false;
for (var i=0; i<global.numb_towns; i++)
	global.anger_level[i] = 0;

display_set_gui_size(1280,720);









//timer
timer1 = 0;
lim1 = 2080; //amount of sec before trans to menu
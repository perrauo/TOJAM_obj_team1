/// @description Insert description here

global.cur_step = 0;
global.money = 0;
global.player_name = "";
global.dest_city = 0;
global.numb_towns = 4;
global.dignity = 50;
for (var i=0; i<global.numb_towns; i++)
	global.anger_level[i] = 0;

display_set_gui_size(1280,720);


//if not initiated
if(highscore_name(1)== "Unknown")
{
	highscore_add("CLARK", 15.00);
	highscore_add("BOB", 3.00);
	highscore_add("SMITH", 2.00);
	highscore_add("LUIGI", 30.00);
	highscore_add("PANDA", 193.00);
	highscore_add("HARRY", 12.00);
	highscore_add("TOBI", 25.00);
	highscore_add("DING", 29.00);
	highscore_add("MIKE", 23.00);
	highscore_add("HARPER", 2.00);
}






//timer
timer1 = 0;
lim1 = 2080; //amount of sec before trans to menu
/// @description Insert description here
// You can write your code in this editor

global.cur_step++;



if(keyboard_check_pressed(ord("P")))
{
	highscore_clear();
	highscore_add("NIMSTRING", 30.00);
	highscore_add("PLUMBUS", 25.00);
	highscore_add("DINGLEBOP", 20.00);
	highscore_add("WONDERCRAP", 23.00);
	highscore_add("MCFLURX", 15.00);
	highscore_add("BLAMFS", 14.00);
	highscore_add("TOFU", 12.00);
	highscore_add("BAGEL", 8.00);
	highscore_add("RADIOSHARK", 6.00);
	highscore_add("HIPPIETOY", 2.00);
}
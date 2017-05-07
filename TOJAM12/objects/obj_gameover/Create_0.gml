/// @description Insert description here
// You can write your code in this editor

//deactivate everything
instance_deactivate_all(false);
	
//instance create leaderboard
var lb= instance_create_depth(room_width/3,room_height/3,-200, obj_leaderboard_UI);	
lb.gameover = true;


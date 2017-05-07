/// @description init leaderboard UI
// You can write your code in this editor

//clear leaderboard
//TODO remove
highscore_clear();


leaderboard_posx = x+ 20;
leaderboard_posy = y- 200;

offset_y_size = 40;

////add score if it exists
//if variable_global_exists("money") && variable_global_exists("player_name") 
//{
//	highscore_add(global.player_name, global.money);
//}

highscore_add("Jo", 15.00);
highscore_add("Bob", 3.00);
highscore_add("Smith", 2.00);
highscore_add("Harry", 19.00);


var i;
i = 10;
repeat(10)
{
   scores[i] = highscore_value(i);
   players[i] = highscore_name(i);
         
   i -= 1;
}

//add back button
instance_create_depth(50, room_height-100, -400, obj_button_back);

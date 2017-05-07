/// @description init leaderboard UI
// You can write your code in this editor

//gameover = false;//flag true if game over

leaderboard_posx = x;
leaderboard_posy = y;

offset_y_size = 40;

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

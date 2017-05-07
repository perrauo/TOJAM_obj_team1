/// @description draw highscore
// You can write your code in this editor

//GM built i highscore system truncates real into integers
//therefore the decimal part of the player's score is ignored


var font = fnt_title;
draw_set_font(font);
draw_text(leaderboard_posx , leaderboard_posy-80, "TOP SELLING CRAP");

font = fnt_leaderboard;
draw_set_font(font);

var offset_y = 0; //reset offset
var offset_x = 400;

for(i = 1; i<10; i++)
{	
	draw_text(leaderboard_posx , leaderboard_posy + offset_y, string(players[i]));
			
	draw_text(leaderboard_posx+ offset_x , leaderboard_posy + offset_y," $" +string(scores[i])+".00" );
		
	//draw dotted line
	var beg_pos = string_length(string(players[i]))*15;
	
	for(j = beg_pos; j < offset_x; j += 10)
	draw_text(leaderboard_posx + j, leaderboard_posy+ offset_y, ".");
		
		
	offset_y += offset_y_size;
}



if(global.gameover)
{
	w = c_white;
	b = c_black;

	var font = fnt_title;
	draw_set_font(font);
	draw_text_color(room_width/3 , 50, "GAME OVER",w,w,w,w,1);


}


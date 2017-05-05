/// @description init
// You can write your code in this editor

enum SELECTED //Text f selected
{
	NAME, PRICE
}
tf_selected = SELECTED.NAME; //by default
curr_text = obj_kiosk.prod_name;
input = ""; 


//TF properties
///name
name_box_alpha= .5;
name_posx = x+5; 
name_posy = y+5; 
name_width = 120; //length of the textfield 
name_height = 40; //height of the tf
name_maxchar = 10;

//price
price_box_alpha= 1;
price_posx = x+5; 
price_posy = y+50; 
price_width = 120;
price_height = 40;

price_maxchar = 15;







//TODO
//edditeable tf
//close open 


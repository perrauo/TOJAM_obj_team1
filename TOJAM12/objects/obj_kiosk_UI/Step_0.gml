/// @description update
// You can write your code in this editor



//destroy UI if no kiosk exist
if(!instance_exists(obj_kiosk))
{
	instance_destroy();
	exit;
}



//x1	The x coordinate of the left side of the rectangle to check.
//y1	The y coordinate of the top side of the rectangle to check.
//x2	The x coordinate of the right side of the rectangle to check.
//y2	The y coordinate of the bottom side of the rectangle to check.


//name tf selected
if point_in_rectangle(mouse_x, mouse_y, name_posx, name_posy, name_posx+name_width, name_posy+name_height)
{
	if(mouse_check_button_pressed(mb_left))
	tf_selected = SELECTED.NAME;
	
}

//price tf selected
if point_in_rectangle(mouse_x, mouse_y, price_posx, price_posy, price_posx+price_width, price_posy+price_height)
{
	if(mouse_check_button_pressed(mb_left))
	{
	show_debug_message("price");
	tf_selected = SELECTED.PRICE;
	}
	
}


//switch text input based on selection
switch tf_selected
{
	case SELECTED.NAME:
	name_box_alpha = .5; //set selected alpha to .5
	
	price_box_alpha = 1; //set unsele to 1
	
	
	//change the input text
	if (keyboard_lastkey != -1) && (string_length(obj_kiosk.prod_name)< name_maxchar)
	{
	s = keyboard_lastchar;
	 
	 obj_kiosk.prod_name += s;
	 
	 keyboard_lastkey = -1;
	 
	}
		
	//delete last char with back space
	if(keyboard_check(vk_backspace))
	obj_kiosk.prod_name = string_delete(obj_kiosk.prod_name, string_length(obj_kiosk.prod_name),1);
	
	//update tb width based on text size
	name_width = string_length(obj_kiosk.prod_name)* 10;
	
	break;
	
	case SELECTED.PRICE:
	price_box_alpha = .5;
	
	name_box_alpha = 1;
	
	
	//change the input text
	if (keyboard_lastkey != -1) && (string_length(obj_kiosk.prod_price)< price_maxchar)
	{
	 var numb = string_digits(keyboard_lastchar);
	 
	 obj_kiosk.prod_price += string(numb);
	 
	 keyboard_lastkey = -1;
	 
	}
	
	
	//delete last char with back space
	if(keyboard_check(vk_backspace))
	obj_kiosk.prod_price = string_delete(obj_kiosk.prod_price, string_length(obj_kiosk.prod_price),1);
	
	//update tb width based on text size
	price_width = string_length("$ "+(obj_kiosk.prod_price)+".00")* 10;
	
		
	
	break;

}










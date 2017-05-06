/// @description Insert description here

var facing = ((direction + 45 + 360) div 90) mod 4;

switch (facing)
{
	case 0:
	{
		sprite_index = spr_mark_walk_right;
		break;
	}
	
	case 1:
	{
		sprite_index = spr_mark_walk_back;
		break;
	}
	
	case 2:
	{
		sprite_index = spr_mark_walk_left;
		break;
	}
	
	case 3:
	{
		sprite_index = spr_mark_walk_front;
		break;
	}	
} 
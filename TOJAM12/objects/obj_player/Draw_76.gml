/// @description Insert description here

var facing = ((direction + 45 + 360) div 90) mod 4;

switch (facing)
{
	case 0:
	{
		if (is_moving)
			sprite_index = spr_player_run_right;
		else
			sprite_index = spr_player_idle_right;
		break;
	}
	
	case 1:
	{
		if (is_moving)
			sprite_index = spr_player_run_back;
		else
			sprite_index = spr_player_idle_back;
		break;
	}
	
	case 2:
	{
		if (is_moving)
			sprite_index = spr_player_run_left;
		else
			sprite_index = spr_player_idle_left;
		break;
	}
	
	case 3:
	{
		if (is_moving)
			sprite_index = spr_player_run_front;
		else
			sprite_index = spr_player_idle_front;
		break;
	}	
} 
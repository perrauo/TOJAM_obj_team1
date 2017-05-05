/// @description Insert description here

var facing = ((direction + 45 + 360) div 90) mod 4;

switch (facing)
{
	case 0:
		sprite_index = spr_player_idle_right;
		break;
	case 1:
		sprite_index = spr_player_idle_back;
		break;
	case 2:
		sprite_index = spr_player_idle_left;
		break;
	case 3:
		sprite_index = spr_player_idle_front;
		break;		
} 
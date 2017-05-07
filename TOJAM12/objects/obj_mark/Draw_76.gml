/// @description Insert description here

var facing = ((direction + 45 + 360) div 90) mod 4;

switch (facing)
{
	case 0:
	{
		if (mode == markMode.sold)
			sprite_index = spr_mark_walk_tonic_right;
		else if (mode == markMode.angry || mode == markMode.emerged)
		{
			if (torch_guy)
				sprite_index = spr_mark_walk_angry_right2;
			else
				sprite_index = spr_mark_walk_angry_right;
		}
		else
		{
			sprite_index = spr_mark_walk_right;
			if (shirt_index == 1)
				shirt_spr = spr_mark_shirt_1_right;
			else if (shirt_index == 2)
				shirt_spr = spr_mark_shirt_2_right;
			else
				shirt_spr = -1;
		}
		break;
	}
	
	case 1:
	{
		if (mode == markMode.sold)
			sprite_index = spr_mark_walk_tonic_back;
		else if (mode == markMode.angry || mode == markMode.emerged)
		{
			if (torch_guy)
				sprite_index = spr_mark_walk_angry_back2;
			else
				sprite_index = spr_mark_walk_angry_back;
		}
		else
		{
			sprite_index = spr_mark_walk_back;
			if (shirt_index == 1)
				shirt_spr = spr_mark_shirt_1_back;
			else if (shirt_index == 2)
				shirt_spr = spr_mark_shirt_2_back;
			else
				shirt_spr = -1;
		}
		break;
	}
	
	case 2:
	{
		if (mode == markMode.sold)
			sprite_index = spr_mark_walk_tonic_left;
		else if (mode == markMode.angry || mode == markMode.emerged)
		{
			if (torch_guy)
				sprite_index = spr_mark_walk_angry_left2;
			else
				sprite_index = spr_mark_walk_angry_left;
		}
		else
		{
			sprite_index = spr_mark_walk_left;
			if (shirt_index == 1)
				shirt_spr = spr_mark_shirt_1_left;
			else if (shirt_index == 2)
				shirt_spr = spr_mark_shirt_2_left;
			else
				shirt_spr = -1;
		}
		break;
	}
	
	case 3:
	{
		if (mode == markMode.sold)
			sprite_index = spr_mark_walk_tonic_front;
		else if (mode == markMode.angry || mode == markMode.emerged)
		{
			if (torch_guy)
				sprite_index = spr_mark_walk_angry_front2;
			else
				sprite_index = spr_mark_walk_angry_front;
		}
		else
		{
			sprite_index = spr_mark_walk_front;
			if (shirt_index == 1)
				shirt_spr = spr_mark_shirt_1_front;
			else if (shirt_index == 2)
				shirt_spr = spr_mark_shirt_2_front;
			else
				shirt_spr = -1;
		}
		break;
	}	
} 
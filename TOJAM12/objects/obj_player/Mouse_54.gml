/// @description Insert description here

if (mode == playerMode.selling)
{
	mode = playerMode.packup;
	instance_destroy(obj_kiosk);
	alarm[1] = 90;
}

else if (mode == playerMode.idle)
{
	mode = playerMode.setup;
	alarm[0] = 90;
}
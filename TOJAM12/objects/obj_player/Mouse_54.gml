/// @description Insert description here

if (mode == playerMode.selling)
{
	mode = playerMode.packup;
	instance_destroy(obj_kiosk);
	audio_play_sound(snd_packup,50,0);
	alarm[1] = 45;
}

else if (mode == playerMode.idle)
{
	mode = playerMode.setup;
	audio_play_sound(snd_setup,50,0);
	alarm[0] = 45;
}
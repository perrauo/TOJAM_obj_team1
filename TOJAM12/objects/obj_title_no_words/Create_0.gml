/// @description put depth way back
// You can write your code in this editor

//depth = 100;

if (!audio_is_playing(mus_menu))
{
	audio_stop_all();
	audio_play_sound(mus_menu,100,true);
}
/// @description modify input fields
// You can write your code in this editor

//input = keyboard_lastchar

if keyboard_lastkey != -1
{
   curr_text += keyboard_lastchar;
   keyboard_lastkey = -1;
}
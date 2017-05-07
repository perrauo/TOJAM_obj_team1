/// @description Insert description here
// You can write your code in this editor

image_speed = dir;
t = dsin(image_index * 20);
x_spd = max(t * 4 * dir,0.2);
z = t*8;

x += x_spd;

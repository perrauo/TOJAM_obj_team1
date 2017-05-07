/// @description Insert description here
// You can write your code in this editor

for (var i=0; i<global.numb_towns; i++)
{
	if (i == global.dest_city)
		global.anger_level[global.dest_city] = num_angry / num_people;
		
	else
		global.anger_level[i] = max(global.anger_level[i]-1/18000,0);
}
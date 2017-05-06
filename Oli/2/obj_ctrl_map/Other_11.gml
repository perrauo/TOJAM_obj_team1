/// @description map already created
// You can write your code in this editor

for(k = 0; k<19; k+=3) //repeat for every town added
{
	var town_name = global.perm_map_layout[k];
	var posx = global.perm_map_layout[k+1];
	var posy = global.perm_map_layout[k+2];

	var town = instance_create_depth(posx, posy, 0,obj_map_town)
	town.town_name= town_name; //assign correct name

}
/// @description create town

mp_potential_settings(180,5,4,true);
global.town_grid = mp_grid_create(0,0,room_width div 32 + 1, room_height div 16 + 1,32,16);

tile_layer = layer_create(99,"Tiles");
var tilemap_width = room_width div 48 + 1;
var tilemap_height = room_height div 48 + 1;
tile_map = layer_tilemap_create(tile_layer,0,0,ts_ground,tilemap_width, tilemap_height);

for (var i=0; i<tilemap_width; i++)
{
	for (var j=0; j<tilemap_height; j++)
	{
		var cur_tile = tilemap_get(tile_map,i,j);
		cur_tile = tile_set_index(cur_tile,choose(1,2));
		tilemap_set(tile_map,cur_tile,i,j);
	}
}

grass_layer = layer_create(98,"Grass");
tilemap_width = room_width div 16 + 1;
tilemap_height = room_height div 16 + 1;
grass_map = layer_tilemap_create(grass_layer,0,0,ts_grass,tilemap_width, tilemap_height);

repeat (200)
{
	var xx = irandom(tilemap_width);
	var yy = irandom(tilemap_height);
	
	var cur_tile = tilemap_get(grass_map,xx,yy);
	cur_tile = tile_set_index(cur_tile,choose(1,2,3));
	tilemap_set(grass_map,cur_tile,xx,yy);
}

num_houses = 20;
num_people = 50;
num_angry = 0;

var count = 0;

while (count < num_houses)
{
	var xx = irandom(room_width-48) div 48 * 48;
	var yy = irandom_range(96,room_height-80) div 64 * 64;
	
	if (!collision_rectangle(xx,yy,xx+96,yy+80,obj_house,false,true))
	{
		instance_create_depth(xx,yy,-yy,obj_house);
		count++;
	}
}

mp_grid_add_instances(global.town_grid,obj_house,false);

alarm[0] = 120;
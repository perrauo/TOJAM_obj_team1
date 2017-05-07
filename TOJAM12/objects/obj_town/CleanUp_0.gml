/// @description Insert description here
// You can write your code in this editor

mp_grid_destroy(global.town_grid);
layer_tilemap_destroy(tile_map);
layer_destroy(tile_layer);

layer_tilemap_destroy(grass_map);
layer_destroy(grass_layer);
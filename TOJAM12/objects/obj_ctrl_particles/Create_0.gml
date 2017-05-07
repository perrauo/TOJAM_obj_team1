/// @description Init
// You can write your code in this editor

//depth
depth = -10001;

//create part system
//we created a global var
global.ps_cloud = part_system_create();

//create emiter
global.em_cloud = part_emitter_create(global.ps_cloud);

//initialize our global dust particles
global.pt_cloud = part_type_create();



/// @description Init
// You can write your code in this editor

//depth
depth = -10001;

//create part system
//we created a global var
global.ps_dust = part_system_create();
var ps = global.ps_dust;
part_system_depth(ps, -10000); //set depth of smoke


//initialize our global dust particles
global.pt_dust1 = part_type_create(); //only one used
var pt = global.pt_dust1 ;

light_beige = make_color_rgb(255, 255, 179);
beige = make_color_rgb(255, 204, 102);

part_type_color_mix(pt,light_beige, beige);
part_type_alpha3(pt,.03,.2,.5);//set alpha
part_type_speed(pt,.1,2,0,.5);
part_type_direction(pt, 0, 360,0,0);
part_type_life(pt, 10,20);
part_type_sprite(pt,spr_part_dust,1,0,true);


//create emiter
global.em_dust = part_emitter_create(global.ps_dust);



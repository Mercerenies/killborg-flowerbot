
global.system = part_system_create();
part_system_depth(global.system, -99899);

global.flower = part_type_create();
part_type_sprite(global.flower, spr_Flower, false, false, false);
part_type_size(global.flower, 1, 1, 0, 0);
part_type_scale(global.flower, 1, 1);
part_type_speed(global.flower, 1.8, 2.8, 0, 0);
part_type_direction(global.flower, 70, 110, 0, 5);
part_type_gravity(global.flower, 0.08, 270);
part_type_orientation(global.flower, 0, 360, 4, 0, false);
part_type_colour1(global.flower, c_white);
part_type_alpha3(global.flower, 0.9, 0.7, 0.0);
part_type_life(global.flower, 70, 100);
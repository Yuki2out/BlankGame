// Create Event
ps_walking = part_system_create();
part_system_draw_order(ps_walking, true);

ptype_walking = part_type_create();
part_type_shape(ptype_walking, pt_shape_square);
part_type_size(ptype_walking, 1, 1, 0, 0);
part_type_scale(ptype_walking, 0.3, 0.3);
part_type_speed(ptype_walking, 5, 5, 0, 0);
part_type_direction(ptype_walking, 145, 207, 0, 0);
part_type_gravity(ptype_walking, 0, 209);
part_type_orientation(ptype_walking, 0, 0, 0, 0, false);
part_type_colour3(ptype_walking, $66463D, $332723, $665651);
part_type_alpha3(ptype_walking, 1, 1, 1);
part_type_blend(ptype_walking, false);
part_type_life(ptype_walking, 0, 25);

pemit_walking = part_emitter_create(ps_walking);
part_emitter_region(ps_walking, pemit_walking, 3.5, -3.5, 3.5, -3.5, ps_shape_rectangle, ps_distr_linear);
part_emitter_stream(ps_walking, pemit_walking, ptype_walking, 1);

part_system_position(ps_walking, x, y);
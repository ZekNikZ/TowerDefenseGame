with(obj_node_prt) {
	if point_distance(x,y,mouse_x,mouse_y) > range {
	obj_cursor.sprite_index = spr_no_power;
	obj_cursor.can_place = false;
	}
	else {
	obj_cursor.sprite_index = spr_tower_turret_test;
	obj_cursor.can_place = true;
	}
}

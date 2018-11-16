if (is_output_node && step_ot_activated) {
	if (target_enemy != noone && instance_exists(target_enemy)) {
		with (target_enemy) {
			var inst = instance_create_layer(other.x, other.y, "lyr_bullets", obj_laser);
			inst.target_x = x;
			inst.target_y = y;
			instance_destroy();
		}
	} else {
		st_current_storage += 500;
	}
}

event_inherited();


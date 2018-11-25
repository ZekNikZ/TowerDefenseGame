if (is_output_node && step_ot_activated) {
	if (target_enemy != noone && instance_exists(target_enemy)) {
		var inst = instance_create_layer(x, y, "lyr_bullets", obj_landmine);
		inst.distance = random_range(20, 30);
		inst.direction = random_range(0, 360);
		attack_counter = attack_cooldown;
	} else {
		st_current_storage += 750;
	}
}

event_inherited();


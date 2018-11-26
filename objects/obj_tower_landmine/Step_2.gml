if (is_output_node && step_ot_activated) {
	var inst = instance_create_layer(x, y, "lyr_bullets", obj_landmine);
	inst.distance = random_range(20, 30);
	inst.direction = random_range(0, 360);
	attack_counter = attack_cooldown;
}

event_inherited();
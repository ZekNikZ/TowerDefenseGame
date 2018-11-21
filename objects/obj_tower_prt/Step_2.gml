if (!game_paused) {
	if (is_output_node) {
		step_ot_activated = false;
	}
	
	if (hp <= 0) {
		instance_destroy();
	}
}
if (!game_paused) {
	if (is_input_node) {
		controller.system_input += step_generated_energy;
	}

	if (is_output_node) {
		controller.system_output += ot_used_energy;
	}

	if (is_transfer_node) {
	
	}

	if (is_storage_node) {
	
	}
}
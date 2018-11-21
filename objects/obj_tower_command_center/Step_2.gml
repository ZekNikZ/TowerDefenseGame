if (!game_paused) {
	var st_nodes_size = ds_list_size(st_nodes);

	energy_to_distribute = energy_to_use - surge_energy;

	system_total_storage = 0;

	for(var i = 0; i < st_nodes_size; ++i) {
		var el = st_nodes[| i];
		if (el.st_current_storage < el.st_capacity) {
			var used = min(el.st_capacity - el.st_current_storage, min(energy_to_distribute, el.st_input_bandwidth));
			el.st_current_storage += used;
			energy_to_distribute -= used;
		}
		if (energy_to_distribute <= 0) break;
	}

	energy_to_distribute = surge_energy;

	for(var i = 0; i < st_nodes_size; ++i) {
		var el = st_nodes[| i];
		if (energy_to_distribute > 0 && el.st_current_storage < el.st_capacity) {
			var used = min(el.st_capacity - el.st_current_storage, energy_to_distribute);
			el.st_current_storage += used;
			energy_to_distribute -= used;
		}
		system_total_storage += el.st_current_storage;
	}


	system_input = 0;
	system_output = 0;

	if (step_ot_activated) {
		tower_cost_deduction = 0;
	}
}

event_inherited();
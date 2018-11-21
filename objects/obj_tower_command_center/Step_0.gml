if (!game_paused) {
	energy_to_use = system_input;
	energy_to_retrieve = 0;

	if (system_output > system_input) {
		energy_to_retrieve = system_output - system_input;
	
		var st_nodes_size = ds_list_size(st_nodes);
		//show_debug_message("STORAGE NODES: " + string(st_nodes_size));
		for(var i = 0; i < st_nodes_size; ++i) {
			var el = st_nodes[| i];
			if (el.st_current_storage > 0) {
				//var taken = min(el.st_current_storage, min(energy_to_retrieve, el.st_output_bandwidth));
				var taken = min(el.st_current_storage, energy_to_retrieve);
				el.st_current_storage -= taken;
				energy_to_retrieve -= taken;
				energy_to_use += taken;
				//show_debug_message("EXTRA ENERGY FROM STORAGE: " + string(taken));
			}
			if (energy_to_retrieve <= 0) break;
		}
	}

	//show_debug_message("SYSTEM INPUT: " + string(system_input));
	//show_debug_message("SYSTEM OUTPUT: " + string(system_output));
	//show_debug_message("ENERGY TO USE: " + string(energy_to_use));

	var ot_nodes_size = ds_list_size(ot_nodes);
	for(var i = 0; i < ot_nodes_size; ++i) {
		var el = ot_nodes[| i];
		if (el.ot_used_energy > 0) {
			with (el) {
				if (is_storage_node) {
					self_used = min(ot_used_energy, st_current_storage);
					ot_used_energy -= self_used;
				}
			}
			
			//show_debug_message("OUTPUT: (" + string(el) + ") " + string(el.ot_used_energy) + " -> " + string(energy_to_use)); 
			if (energy_to_use >= el.ot_used_energy) {
				el.step_ot_activated = true;
				energy_to_use -= el.ot_used_energy;
				with (el) {
					if (is_storage_node) {
						st_current_storage -= self_used;
					}
				}
			}
		}
		if (energy_to_use <= 0) break;
	}

	surge_energy = max(0, energy_to_use - system_input);
}
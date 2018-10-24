var st_nodes_size = ds_list_size(st_nodes);

energy_to_distribute = energy_to_use;

for(var i = 0; i < st_nodes_size; ++i) {
	var el = st_nodes[| i];
	if (el.st_current_storage < el.st_capacity) {
		var used = min(el.st_capacity - el.st_current_storage, min(energy_to_distribute, el.st_input_bandwidth));
		el.st_current_storage += used;
		energy_to_distribute -= used;
	}
	if (energy_to_distribute <= 0) break;
}

//system_input = 0;
//system_output = 0;

event_inherited();

flag3 = true;
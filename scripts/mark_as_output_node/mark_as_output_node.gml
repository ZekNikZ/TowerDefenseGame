/// mark_as_output_node(default_output_bandwidth, default_priority)

// Mark as output node
is_output_node = true;

// Setup node bandwidth
if (argument_count < 1) {
	ot_input_bandwidth = -1;
} else {
	ot_input_bandwidth = argument[0];
}

// Setup priority
if (argument_count < 2) {
	ot_priority = 0;
} else {
	ot_priority = argument[1];
}


// Miscellaneous Setup
step_used_energy = 0;
ot_used_energy = 0;
step_ot_activated = false;
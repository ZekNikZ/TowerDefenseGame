/// mark_as_input_node(default_input_bandwidth)

// Mark as input node
is_input_node = true;

// Setup node bandwidth
if (argument_count < 1) {
	in_output_bandwidth = -1;
} else {
	in_output_bandwidth = argument[0];
}

// Miscellaneous Setup
step_generated_energy = 0;
in_generated_energy = 0;
step_in_activated = false;
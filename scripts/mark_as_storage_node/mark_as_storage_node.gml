/// mark_as_storage_node(default_input_bandwidth, default_output_bandwidth, default_priority, default_capacity)

// Mark as storage node
is_storage_node = true;

// Setup node bandwidth
if (argument_count < 1) {
	st_input_bandwidth = -1;
} else {
	st_input_bandwidth = argument[0];
}
if (argument_count < 2) {
	st_output_bandwidth = -1;
} else {
	st_output_bandwidth = argument[1];
}

// Setup priority
if (argument_count < 3) {
	st_priority = 0;
} else {
	st_priority = argument[2];
}

// Setup capacity
if (argument_count < 4) {
	st_capacity = 1000;
} else {
	st_capacity = argument[3];
}


// Miscellaneous Setup
st_current_storage = 0;
step_st_activated = false;
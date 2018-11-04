/// mark_as_health_node(default_input_bandwidth, default_output_bandwidth, default_priority, default_capacity)

// Mark as health node
is_health_node = true;

// Setup node bandwidth
if (argument_count < 1) {
	hp = 100;
	hp_max = 100;
} else {
	hp = argument[0];
	hp_max = argument[0];
}
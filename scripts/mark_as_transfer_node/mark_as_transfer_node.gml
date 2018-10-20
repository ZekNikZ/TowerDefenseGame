/// mark_as_transfer_node(default_upkeep)

// Mark as transfer node
is_transfer_node = true;

// Setup node upkeep
if (argument_count < 1) {
	tr_upkeep_factor = -1;
} else {
	tr_upkeep_factor = argument[0];
}

// Miscellaneous Setup
step_tr_activated = false;
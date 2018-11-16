mark_as_node("Solar Collector", "This solar panel collects energy based\non the time of day.", spr_type_unknown, 1000);

mark_as_input_node();
mark_as_transfer_node();

node_setup(obj_tower_command_center);

counter = 0;

debug_energy_gen = 10;
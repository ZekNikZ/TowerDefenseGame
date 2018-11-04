mark_as_node("Command Centre", "This structure is the central regulator\nfor the energy network. As such, make\nsure it is not destroyed.", spr_type_command_centre, -1);

mark_as_input_node();
mark_as_transfer_node();
mark_as_storage_node(20, 50, -1, 1500);
mark_as_health_node(120);

mark_as_parent_node();

node_setup(id);

system_input = 0;
system_output = 0;
system_total_storage = 0;
energy_to_use = 0;
surge_energy = 0;

st_current_storage = 500;
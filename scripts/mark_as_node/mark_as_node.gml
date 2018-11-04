/// mark_as_node()

is_input_node = false;
is_output_node = false;
is_transfer_node = false;
is_storage_node = false;
is_health_node = false;

if (argument_count == 4) {
    tower_name = argument[0];
    tower_desc = argument[1];
	tower_type_icon = argument[2];
	tower_cost = argument[3];
}
ds_list_delete(controller.system_nodes, ds_list_find_index(controller.system_nodes, id));

if (is_input_node) {
	ds_list_delete(controller.in_nodes, ds_list_find_index(controller.in_nodes, id));
}

if (is_output_node) {
	ds_list_delete(controller.ot_nodes, ds_list_find_index(controller.ot_nodes, id));
}

if (is_storage_node) {
	ds_list_delete(controller.st_nodes, ds_list_find_index(controller.st_nodes, id));
}
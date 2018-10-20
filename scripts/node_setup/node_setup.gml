controller = argument0;

if (is_input_node) {
	ds_list_add(controller.in_nodes, id);
}

if (is_output_node) {
	ds_list_add(controller.ot_nodes, id);
	ds_list_sort_custom(controller.ot_nodes, cmp_ot_priority);
}

if (is_storage_node) {
	ds_list_add(controller.st_nodes, id);
	ds_list_sort_custom(controller.st_nodes, cmp_st_priority);
}
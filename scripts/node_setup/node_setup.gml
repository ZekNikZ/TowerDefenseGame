controller = argument0;

ds_list_add(controller.system_nodes, id);
controller.system_center_x = 0;
controller.system_center_y = 0;
for(var i = 0; i < ds_list_size(controller.system_nodes); ++i) {
	controller.system_center_x += controller.system_nodes[| i].x;
	controller.system_center_y += controller.system_nodes[| i].y;
}
controller.system_center_x /= ds_list_size(controller.system_nodes);
controller.system_center_y /= ds_list_size(controller.system_nodes);
controller.system_max_radius = max(controller.system_max_radius, distance_to_object(controller));

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
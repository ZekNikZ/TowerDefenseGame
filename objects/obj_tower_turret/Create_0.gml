mark_as_node("turret", spr_type_unknown, 3000);

mark_as_output_node();
mark_as_transfer_node();
mark_as_storage_node(20, 20, 10, 500);

node_setup(obj_tower_command_center);


target_enemy = noone;
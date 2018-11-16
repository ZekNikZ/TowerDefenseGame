mark_as_node("Basic Battery", "This is the most basic form of mass\nenergy storage. This acts as a reserve\nenergy storage location.", spr_type_unknown, 2000);

mark_as_transfer_node();
mark_as_storage_node(10, 250, 0, 4000);

node_setup(obj_tower_command_center);
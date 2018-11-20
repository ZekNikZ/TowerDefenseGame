can_place = false;
click = 0;
nearest_tower = 0;
proximity_check_type = 0;

enum CursorMode {
	NONE,
	SELECT,
	PLACE
}

mode = CursorMode.SELECT;

tower_type = obj_tower_command_center;
tower_icon = spr_tower_command_center_debug;
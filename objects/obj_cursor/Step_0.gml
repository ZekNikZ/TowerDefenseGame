click = mouse_check_button_pressed(mb_left);

if (!game_paused) {
	if (mode == CursorMode.PLACE) {
		check_proximity();
	} else if (mode == CursorMode.SELECT && click) {
		var inst = instance_position(mouse_x, mouse_y, obj_tower_prt);
		if (inst != noone) {
			obj_ui.selected_tower = inst;
		} else {
			obj_ui.selected_tower = -1;
		}
	}
}
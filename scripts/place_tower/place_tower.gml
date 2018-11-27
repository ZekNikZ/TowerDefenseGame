with(obj_cursor){
	sprite_index = tower_icon;
	
	if ((can_place) && (click)) {
		if (tower_cost <= obj_tower_command_center.system_total_storage) {
			instance_create_layer(x, y, "lyr_towers", tower_type);
			mode = CursorMode.SELECT;
			sprite_index = noone;
			obj_tower_command_center.tower_cost_deduction += tower_cost;
			obj_ui.unlocked_towers_costs[| tower_index] += 350;
		}
	} else if (click) {
		mode = CursorMode.SELECT;
		sprite_index = noone;
	}
	
}

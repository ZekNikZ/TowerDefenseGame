with(obj_cursor){
	switch(tower_type) {
		case 1: 
			sprite_index = obj_tower_command_center;
			break;
		case 2:
			sprite_index = spr_tower_battery;
			break;
		case 3:
			sprite_index = spr_tower_solar_collector;
			break;
		case 4:
			sprite_index = spr_tower_turret;
			break;
	}
	
	if ((can_place) && (click)) {
		if (tower_cost <= obj_tower_command_center.system_total_storage) {
			switch(tower_type) {
				case 1: 
					instance_create_layer(x,y,"lyr_towers", obj_tower_command_center);
					break;
				case 2:
					instance_create_layer(x,y,"lyr_towers", obj_tower_battery);
					break;
				case 3:
					instance_create_layer(x,y,"lyr_towers", obj_tower_solar_collector);
					break;
				case 4:
					instance_create_layer(x,y,"lyr_towers", obj_tower_turret);
					break;
			}
			mode = CursorMode.SELECT;
			sprite_index = noone;
			obj_tower_command_center.tower_cost_deduction += tower_cost;
			show_debug_message("Cost some more stuff");
		}
	}
	
}

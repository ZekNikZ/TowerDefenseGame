with(obj_cursor) {
	for(proximity_check_type = 1; proximity_check_type <= 4; proximity_check_type++) {
		switch(proximity_check_type) {
			case 1: 
				nearest_tower = instance_nearest(x,y,obj_tower_command_centre_test);
				break;
			case 2: 
				nearest_tower = instance_nearest(x,y,obj_tower_battery_test);
				break;
			case 3:
				nearest_tower = instance_nearest(x,y,obj_tower_solar_collector_test);
				break;
			case 4:
				nearest_tower = instance_nearest(x,y,obj_tower_turret_test);
				break;
		}
		
		if (instance_exists(nearest_tower) && point_distance(x,y,nearest_tower.x,nearest_tower.y) < nearest_tower.range) {
			can_place = true;
			place_tower();
			break;
		} else {
			sprite_index = spr_no_power;
			can_place = false;
		}
	}
}


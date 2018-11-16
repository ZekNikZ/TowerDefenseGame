with(obj_cursor) {
	for(var proximity_check_type = 1; proximity_check_type <= 4; proximity_check_type++) {
		switch(proximity_check_type) {
			case 1: 
				nearest_tower = instance_nearest(x,y,obj_tower_command_center);
				break;
			case 2: 
				nearest_tower = instance_nearest(x,y,obj_tower_battery);
				break;
			case 3:
				nearest_tower = instance_nearest(x,y,obj_tower_solar_collector);
				break;
			case 4:
				nearest_tower = instance_nearest(x,y,obj_tower_turret);
				break;
		}
		
		var tilemap_id = layer_tilemap_get_id("lyr_terrain");
		
		if (place_meeting(x,y,obj_tower_prt) || tile_get_index(tilemap_get_at_pixel(tilemap_id, x, y)) >= 4) {
			can_place = false;
			sprite_index = spr_too_close;
		} else if (tower_cost <= obj_tower_command_center.system_total_storage && instance_exists(nearest_tower) && point_distance(x,y,nearest_tower.x,nearest_tower.y) < nearest_tower.place_range) {
			can_place = true;
			place_tower();
			break;
		} else {
			sprite_index = spr_no_power;
			can_place = false;
		}
		
		
	}
}


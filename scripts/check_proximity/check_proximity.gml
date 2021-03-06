with(obj_cursor) {
	var size = ds_map_size(tower_info);
	current_key = ds_map_find_first(tower_info);
	
	var in_range = false;
	
	for(var proximity_check_type = 0; proximity_check_type < size; ++proximity_check_type) {
		//show_debug_message("obj_tower_" + current_key);
		nearest_tower = instance_nearest(x, y, asset_get_index("obj_tower_" + current_key));
		
		var tilemap_id = layer_tilemap_get_id("lyr_terrain");
		
		if (place_meeting(x,y,obj_tower_prt)) {
			can_place = false;
			sprite_index = spr_too_close;
		} else if (tower_cost <= obj_tower_command_center.system_total_storage && instance_exists(nearest_tower) && point_distance(x,y,nearest_tower.x,nearest_tower.y) < nearest_tower.place_range) {
			if (tile_get_index(tilemap_get_at_pixel(tilemap_id, x, y)) >= 4) {
				if (tower_type == obj_tower_water_wheel) {
					can_place = true;
					place_tower();
					break;
				} else {
					can_place = false;
					sprite_index = spr_too_close;
				}
			} else {
				if (tower_type == obj_tower_water_wheel) {
					can_place = false;
					sprite_index = spr_too_close;
				} else {
					can_place = true;
					place_tower();
					break;
				}
			}
			//can_place = true;
			//place_tower();
			//break;
		} else if (click) {
			mode = CursorMode.SELECT;
			sprite_index = noone;
			can_place = false;
		} else {
			if (!in_range && instance_exists(nearest_tower) && point_distance(x,y,nearest_tower.x,nearest_tower.y) < nearest_tower.place_range) {
				in_range = true;
			}
			if (tower_type == obj_tower_water_wheel && in_range) {
				if (tile_get_index(tilemap_get_at_pixel(tilemap_id, x, y)) >= 4) {
					in_range = true;
				} else {
					in_range = false;
				}
			}
			
			if (in_range) sprite_index = spr_no_power;
			else sprite_index = spr_too_close;
			can_place = false;
		}
		
		current_key = ds_map_find_next(tower_info, current_key);
	}
}


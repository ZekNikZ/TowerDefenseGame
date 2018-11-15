/*
spawn_counter--;

if (spawn_counter < 0) {
	var angle = random_range(0, 360);
	
	instance_create_layer(origin_object.x + lengthdir_x(spawn_radius_add, angle), origin_object.y + lengthdir_y(spawn_radius_add, angle), "lyr_enemies", asset_get_index("obj_enemy_crawler"));
	
	spawn_counter = ceil(spawn_counter_max - spawn_counter_max / spawned_count_max * spawned_count);
	spawned_count++;
}
*/



if (!spawn_complete) {
	if (wave_num < ds_list_size(wave_info)) {
		var wave_enemies = ds_map_find_value(wave_info[| wave_num], "enemies");
		if (spawn_index < ds_list_size(wave_enemies)) {
			if (spawn_count < ds_map_find_value(wave_enemies[| spawn_index], "count")) {
				show_debug_message(string(wave_num) + " " + string(spawn_index) + " " + string(spawn_count) + " " + string(ds_map_find_value(wave_enemies[| spawn_index], "type")) + " " + string(ds_map_find_value(wave_enemies[| spawn_index], "count")));
				var angle = random_range(0, 360);
				
				show_debug_message(origin_object.system_max_radius);
	
				show_debug_message(string(origin_object.x + lengthdir_x(origin_object.system_max_radius + spawn_radius_add, angle)) + " - " + string(origin_object.y + lengthdir_y(origin_object.system_max_radius + spawn_radius_add, angle)));
				instance_create_layer(origin_object.x + lengthdir_x(origin_object.system_max_radius + spawn_radius_add, angle), origin_object.y + lengthdir_y(origin_object.system_max_radius + spawn_radius_add, angle), "lyr_enemies", asset_get_index("obj_enemy_" + ds_map_find_value(wave_enemies[| spawn_index], "type")));
				//instance_create_layer(100, 100, "lyr_enemies", obj_enemy_crawler);
				
				++spawn_count;
			} else {
				++spawn_index;
				spawn_count = 0;
			}
		} else {
			spawn_complete = true;
			alarm_set(WAVE_ALARM, ds_map_find_value(wave_info[| wave_num], "spawn_time"));
		}
	} else {
		spawn_complete = true;
	}
}
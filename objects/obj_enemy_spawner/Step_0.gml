/*

spawn_counter--;

if (spawn_counter < 0) {
	var angle = random_range(0, 360);
	
	instance_create_layer(origin_object.x + lengthdir_x(spawn_radius, angle), origin_object.y + lengthdir_y(spawn_radius, angle), "lyr_enemies", obj_enemy);
	
	spawn_counter = ceil(spawn_counter_max - spawn_counter_max / spawned_count_max * spawned_count);
	spawned_count++;
}

*/

if (wave_state == WAVE_STATE.SETUP && !spawn_complete) {
	if (wave_num < ds_list_size(wave_info)) {
		var wave_enemies = ds_map_find_value(wave_info[| wave_num], "enemies");
		if (spawn_index < ds_list_size(wave_enemies)) {
			if (spawn_count < ds_map_find_value(wave_enemies[| spawn_index], "count")) {
				var angle = random_range(0, 360);
	
				instance_create_layer(origin_object.x + lengthdir_x(spawn_radius, angle), origin_object.y + lengthdir_y(spawn_radius, angle), "lyr_enemies", "obj_enemy_" + ds_map_find_value(wave_enemies[| spawn_index], "type"));
			
				++spawn_count;
			} else {
				++spawn_index;
				spawn_count = 0;
			}
		} else {
			spawn_complete = true;
		}
	}
}
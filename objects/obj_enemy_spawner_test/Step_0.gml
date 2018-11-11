spawn_counter--;

if (spawn_counter < 0) {
	var angle = random_range(0, 360);
	
	instance_create_layer(origin_object.x + lengthdir_x(spawn_radius, angle), origin_object.y + lengthdir_y(spawn_radius, angle), "lyr_enemies", obj_enemy);
	
	spawn_counter = ceil(spawn_counter_max - spawn_counter_max / spawned_count_max * spawned_count);
	spawned_count++;
}
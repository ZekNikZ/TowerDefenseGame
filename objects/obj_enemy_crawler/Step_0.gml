//mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_tower_prt);

target_tower = instance_nearest(x, y, obj_tower_prt);
//point_direction(x, y, target_tower.x, target_tower.y);

if (!game_paused) {
	if (attack_counter <= 0) {
		if (instance_exists(target_tower)) {
			speed = spd;
			if (tile_get_index(tilemap_get_at_pixel(obj_room_setup.tilemap_id, x, y)) >= 4) {
				var dir = point_direction(x, y, target_tower.x, target_tower.y);
				repeat(20) {
					if (tile_get_index(tilemap_get_at_pixel(obj_room_setup.tilemap_id, x, y)) >= 4) {
						x += lengthdir_x(spd, dir + 180);
						y += lengthdir_y(spd, dir + 180);
					} else {
						break;
					}
				}
				//move_towards_point(target_tower.x, target_tower.y, -spd * 10);
			} else {
				mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_wall);
			}
		}
	} else {
		--attack_counter;
	}
	image_angle = direction;
} else {
	speed = 0;
}
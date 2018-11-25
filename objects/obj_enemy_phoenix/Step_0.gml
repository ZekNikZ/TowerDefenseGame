//mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_tower_prt);

target_tower = instance_nearest(x, y, obj_tower_prt);
//point_direction(x, y, target_tower.x, target_tower.y);

if (!game_paused) {
	if (attack_counter <= 0) {
		if (instance_exists(target_tower)) {
			move_towards_point(target_tower.x, target_tower.y, spd);
		}
	} else {
		--attack_counter;
	}
	image_angle = direction;
} else {
	speed = 0;
}


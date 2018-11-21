//mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_tower_prt);

target_tower = instance_nearest(x, y, obj_tower_prt);

if (!game_paused) {
	move_towards_point(target_tower.x, target_tower.y, spd);
} else {
	speed = 0;
}
//mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_tower_prt);

target_tower = instance_nearest(x, y, obj_tower_prt);
//point_direction(x, y, target_tower.x, target_tower.y);

if (!game_paused) {
	if (tile_get_index(tilemap_get_at_pixel(obj_room_setup.tilemap_id, x, y)) >= 4) {
		move_towards_point(target_tower.x, target_tower.y, spd);
	} else {
		mp_potential_step_object(target_tower.x, target_tower.y, spd, obj_wall);
	}
	image_angle = direction;
} else {
	speed = 0;
}
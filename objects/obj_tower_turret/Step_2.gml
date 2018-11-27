if (is_output_node && step_ot_activated) {
	if (target_enemy != noone && instance_exists(target_enemy)) {
		with (target_enemy) {
			//var inst = instance_create_layer(other.x, other.y - 20, "lyr_bullets", obj_laser);
			var inst = instance_create_layer(other.x, other.y - 20, "lyr_bullets", obj_bullet);
			inst.target_x = x;
			inst.target_y = y;
			inst.direction = point_direction(other.x, other.y - 20, inst.target_x, inst.target_y);
			inst.spd = 35;
			inst.image_angle = direction + 180;
			//hp -= 25;
		}
		audio_play_sound(asset_get_index("sfx_shoot_" + string(game_theme)), 0, false);
		attack_counter = attack_cooldown;
	} else {
		st_current_storage += 500;
	}
}

event_inherited();


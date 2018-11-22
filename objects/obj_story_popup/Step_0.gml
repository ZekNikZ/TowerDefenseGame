if (keyboard_check_pressed(vk_enter) && game_paused && pause_type == PauseType.MESSAGE) {
	game_paused = false;
	pause_type = PauseType.NORMAL;
	story_visible = false;
	with(obj_enemy_spawner) { event_user(1); }
}
if (keyboard_check_pressed(vk_escape) && !(game_paused && pause_type == PauseType.MESSAGE)) {
	game_paused = !game_paused;
}

if (game_paused && pause_type == PauseType.NORMAL && keyboard_check_pressed(ord("Q"))) {
	room_goto(rm_main_menu);
}
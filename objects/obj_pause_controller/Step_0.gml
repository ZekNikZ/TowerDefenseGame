if (keyboard_check_pressed(vk_escape)) {
	game_paused = !game_paused;
}

if (game_paused && keyboard_check_pressed(ord("Q"))) {
	game_restart();
}
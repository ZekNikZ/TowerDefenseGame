switch(selected_index) {
	case 0:
		game_theme = (game_theme + 1) % 3;
		break;
	case 1:
		game_world = (game_world + 1) % 3;
		break;
	case 2:
		room_goto(rm_main_menu);
		break;
}
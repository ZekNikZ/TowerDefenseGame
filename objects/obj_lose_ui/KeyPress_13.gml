switch(selected_index) {
	case 0:
		room_goto(rm_game);
		audio_stop_all();
		break;
	case 1:
		room_goto(rm_main_menu);
		break;
	case 2:
		game_end();
		break;
}
switch(selected_index) {
	case 0:
		room_goto(rm_game);
		break;
	case 1:
		room_goto(rm_options);
		break;
	case 2:
		game_end();
		break;
}
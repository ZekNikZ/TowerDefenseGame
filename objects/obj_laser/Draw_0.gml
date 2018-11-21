if (!game_paused) {
	timer--;

	if (timer < 0) {
		instance_destroy();
	}
}

draw_line_width_color(x, y, target_x, target_y, 4, c_red, c_red);
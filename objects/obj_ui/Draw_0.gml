if (selected_tower != -1) {
	with(selected_tower) {
		draw_set_color(c_blue);
		draw_circle(x, y, place_range, true);
	}
}
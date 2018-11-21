if (game_paused) {
	var width = window_get_width();
	var height = window_get_height();
	
	draw_set_color(c_white);
	
	draw_set_font(fnt_subtitle);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	
	draw_text(width / 2, height / 2 + 60, "Game Paused");
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	draw_rectangle(width / 2 + 15 - 10, height / 2 - 24, width / 2 + 15 + 10, height / 2 + 24, false);
	draw_rectangle(width / 2 - 15 - 10, height / 2 - 24, width / 2 - 15 + 10, height / 2 + 24, false);
}
if (story_visible) {
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_roundrect_ext(width / 2 - 250, height / 2 + 50, width / 2 + 250, height / 2 + 150, 20, 20, false);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_roundrect_ext(width / 2 - 250, height / 2 + 50, width / 2 + 250, height / 2 + 150, 20, 20, true);

	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text_ext(width / 2 - 225, height / 2 + 60, story_text, 20, 450);
	
	draw_set_font(fnt_ui_info);
	draw_set_halign(fa_right);
	draw_text(width / 2 + 250, height / 2 + 150 + 12, "Press 'ENTER' to continue.");
	
	draw_set_halign(fa_left);
}

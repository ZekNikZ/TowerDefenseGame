++dot_counter;

if (dot_counter >= dot_counter_max) {
	dots = dots % 3 + 1
	dot_counter = 0;
}

loading_progress = loading_progress + 0.01;
if (loading_progress >= 1) {
	room_goto_next();
}

draw_set_font(fnt_menu);

draw_text(width / 2, height / 2, "Loading" + string_repeat(".", dots));

var b = 3;
var o = 50;
draw_set_color(c_white);
draw_rectangle(width / 2 - 75 - b, height / 2 - 10 - b + o, width / 2 + 75 + b, height / 2 + 10 + b + o, true);
draw_rectangle(width / 2 - 75, height / 2 - 10 + o, width / 2 - 75 + 150 * loading_progress, height / 2 + 10 + o, false);

draw_set_halign(fa_center);
draw_set_valign(fa_center);
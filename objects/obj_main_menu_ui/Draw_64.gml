draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fnt_title);
draw_set_color(c_white);

draw_text(width / 2, height / 2 - 200, "Mundus Turrium");

draw_set_font(fnt_subtitle);

var offset = 0;

if (offset == selected_index) draw_set_color(c_white); else draw_set_color(c_gray); 
draw_text(width / 2, height / 2 + 10 + offset++ * 60, "Start Game");

if (offset == selected_index) draw_set_color(c_white); else draw_set_color(c_gray);
draw_text(width / 2, height / 2 + 10 + offset++ * 60, "Options");

if (offset == selected_index) draw_set_color(c_white); else draw_set_color(c_gray);
draw_text(width / 2, height / 2 + 10 + offset++ * 60, "Exit");

indices = offset;
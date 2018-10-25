draw_self();

var icon_offset = 0;

draw_set_font(fnt_small_debug);

draw_sprite_ext(spr_debug_node_icon_health, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, string(hp) + "/" + string(hp_max));
icon_offset += 17;

if (is_input_node) {
	draw_sprite_ext(spr_debug_node_icon_input, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
	draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, step_generated_energy);
	icon_offset += 17;
}

if (is_output_node) {
	draw_sprite_ext(spr_debug_node_icon_output, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
	draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, step_used_energy);
	icon_offset += 17;
}

if (is_transfer_node) {
	draw_sprite_ext(spr_debug_node_icon_transfer, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
	draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, "");
	icon_offset += 17;
	
}

if (is_storage_node) {
	draw_sprite_ext(spr_debug_node_icon_storage, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
	draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, string(st_current_storage) + "/" + string(st_capacity) + "(" + string(st_priority) + ")");
	icon_offset += 17;
	
}
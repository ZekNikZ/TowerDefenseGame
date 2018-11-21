//shader_set(sdr_color_choose);
draw_self();
//shader_reset();

/*

var icon_offset = 0;

draw_set_font(fnt_small_debug);
draw_set_color(c_white);

if (is_health_node) {
	draw_sprite_ext(spr_debug_node_icon_health, -1, x - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, 2, 2, 0, c_white, 1);
	draw_text(x + 17 - sprite_width / 2, y + sprite_height / 2 + 2 + icon_offset, string(hp) + "/" + string(hp_max));
	icon_offset += 17;
}

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

*/

if (is_health_node && hp < hp_max) {
	//draw_set_color(lerp3_color(c_red, c_orange, c_green, hp / hp_max));
	draw_set_color(merge_color(c_red, c_green, hp / hp_max));
	
	draw_rectangle(x - sprite_width / 2 * hp / hp_max, y + sprite_height / 2 + 2, x + sprite_width / 2 * hp / hp_max, y + sprite_height / 2 + 4, false);
}

surface_set_target(obj_fow.surf);
gpu_set_blendmode(bm_max);
draw_circle_color(x, y, place_range + 100, c_white, c_black, false);
gpu_set_blendmode(bm_normal);
surface_reset_target();
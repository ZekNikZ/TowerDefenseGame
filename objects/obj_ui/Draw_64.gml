width = window_get_width();
height = window_get_height();

// Bottom rectangle
draw_set_color(c_black);
draw_set_alpha(0.7);
draw_rectangle(game_controls_width * width, height - bottom_height * height, width - side_width * width, height, false);

// Side rectangle
draw_set_alpha(0.6);
draw_rectangle(width - side_width * width, 0, width, height, false);

// Game Controls
draw_set_alpha(0.6);
draw_rectangle(0, height - bottom_height * height, game_controls_width * width - 1, height, false);

// Selected Tower Info
if (selected_tower != -1 && instance_exists(selected_tower)) {
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	var scale = (bottom_height * height - 2 * selected_tower_sprite_padding * width) / sprite_get_height(selected_tower.sprite_index);
	var ox = sprite_get_width(selected_tower.sprite_index) / 2 * scale;
	var oy = sprite_get_height(selected_tower.sprite_index) / 2 * scale;
	
	var zx = game_controls_width * width + selected_tower_sprite_padding * width;
	var zy = height - bottom_height * height + selected_tower_sprite_padding * width;
	
	var tx = zx + ox * 2 + selected_tower_sprite_padding * width;
	
	var ax = tx + 300;
	
	// Icon
	draw_sprite_ext(selected_tower.sprite_index, -1, zx + ox, zy + oy, scale, scale, selected_tower.image_angle, c_white, 1);
	
	// Text
	draw_set_font(fnt_ui_tower_name);
	draw_text(tx, zy, selected_tower.tower_name); 
	
	draw_set_font(fnt_ui_tower_desc);
	draw_text_ext(tx, zy + 26, selected_tower.tower_desc, 15, 280); 
	
	draw_set_font(fnt_ui_tower_attr);
	
	var icon_offset = 0;
	
	// Health
	if (selected_tower.is_health_node) {
		draw_sprite_ext(spr_debug_node_icon_health, -1, ax, zy + icon_offset, 3, 3, 0, c_white, 1);
		draw_text(ax + 30, zy + icon_offset, string(selected_tower.hp) + " / " + string(selected_tower.hp_max));
		icon_offset += 30;
	}
	
	// Storage
	if (selected_tower.is_storage_node) {
		draw_sprite_ext(spr_debug_node_icon_storage, -1, ax, zy + icon_offset, 3, 3, 0, c_white, 1);
		//draw_text(ax + 30, zy + icon_offset, string(selected_tower.st_current_storage) + " / " + string(selected_tower.st_capacity) + " (" + string(selected_tower.st_priority) + ")");
		draw_text(ax + 30, zy + icon_offset, string(selected_tower.st_current_storage) + " / " + string(selected_tower.st_capacity));
		icon_offset += 30;
	}
	
	// Input
	if (selected_tower.is_input_node) {
		draw_sprite_ext(spr_debug_node_icon_input, -1, ax, zy + icon_offset, 3, 3, 0, c_white, 1);
		draw_text(ax + 30, zy + icon_offset, selected_tower.step_generated_energy);
		icon_offset += 30;
	}
	
	// Output
	if (selected_tower.is_output_node) {
		draw_sprite_ext(spr_debug_node_icon_output, -1, ax, zy + icon_offset, 3, 3, 0, c_white, 1);
		draw_text(ax + 30, zy + icon_offset, selected_tower.step_used_energy);
		icon_offset += 30;
	}
} else {
	selected_tower = noone;
}

draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_ui_tower_attr);
	
// Network information
if (instance_exists(obj_tower_command_center)) {
	draw_sprite_ext(spr_debug_node_icon_energy, -1, width - side_width * width + 3, 10, 1.5, 1.5, 0, c_white, 1);
	draw_text(width - side_width * width + 33, 10, obj_tower_command_center.system_total_storage);

	draw_sprite_ext(spr_debug_node_icon_health, -1, width - side_width * width + 3, 40, 3, 3, 0, c_white, 1);
	draw_text(width - side_width * width + 33, 40, string(obj_tower_command_center.hp));
}

// Tower buttons
var click = mouse_check_button_pressed(mb_left) && window_mouse_get_x() > width - side_width * width;
var tower_button_offset = 0;
for(var i = 0; i < ds_list_size(unlocked_towers_objs); ++i) {
	var zx = width - side_width * width;
	var zy = 80 + tower_button_offset;
	var scale = (side_width * width - tower_button_sprite_padding * 2 * width) / sprite_get_width(unlocked_towers_icons[| i]);
	var ox = sprite_get_width(unlocked_towers_icons[| i]) / 2 * scale;
	var oy = sprite_get_height(unlocked_towers_icons[| i]) / 2 * scale;
	
	draw_sprite_ext(unlocked_towers_icons[| i], -1, zx + tower_button_sprite_padding * width + ox, zy + oy, scale, scale, 0, c_white, 1);
	
	draw_sprite_ext(spr_debug_node_icon_energy, -1, zx + tower_button_sprite_padding * width, zy + oy * 2 + 5, 1.5, 1.5, 0, c_white, 1);
	
	if (instance_exists(obj_tower_command_center) && unlocked_towers_costs[| i] <= obj_tower_command_center.system_total_storage) {
		draw_set_color(c_white);
	} else {
		draw_set_color(c_red);
	}

	// Tower button checking
	if (click) {
		if (zy <= window_mouse_get_y() && window_mouse_get_y() <= zy + oy * 2 + 30) {
			obj_cursor.tower_type = unlocked_towers_objs[| i];
			obj_cursor.tower_icon = unlocked_towers_icons[| i];
			obj_cursor.mode = CursorMode.PLACE;
			obj_cursor.tower_cost = unlocked_towers_costs[| i];
			//show_debug_message(obj_cursor.tower_cost);
		}
	}
	
	draw_text(zx + tower_button_sprite_padding * width + 27, zy + oy * 2 + 5, unlocked_towers_costs[| i]);
	
	tower_button_offset += oy * 2 + 35;
}

// Stats
draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_font(fnt_ui_tower_attr);
draw_set_color(c_white);

draw_text(game_controls_width * width / 2, height - bottom_height * height + 30, "Wave " + string(obj_enemy_spawner.wave_num + 1));

draw_set_halign(fa_left);
draw_set_valign(fa_top);

// Minimap
draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0, 0, 2 * minimap_border + minimap_size * width, 2 * minimap_border + minimap_size * width, false);

if (!surface_exists(surf)) {
    surf = surface_create(camera_get_view_width(view_camera[1]), camera_get_view_height(view_camera[1]));
    view_surface_id[1] = surf;
}

if (surface_exists(surf)) {
	var cx = camera_get_view_x(view_camera[0]);
	var cy = camera_get_view_y(view_camera[0]);
	var cw = camera_get_view_width(view_camera[0]);
	var ch = camera_get_view_height(view_camera[0]);
	var border = 32;
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	
	surface_set_target(surf);
	draw_rectangle(cx, cy, cx + cw, cy + border, false);
	draw_rectangle(cx, cy + ch, cx + cw, cy + ch - border, false);
	draw_rectangle(cx, cy, cx + border, cy + ch, false);
	draw_rectangle(cx + cw, cy, cx + cw - border, cy + ch, false);
	surface_reset_target();
	
	draw_surface_stretched(surf, minimap_border, minimap_border, minimap_size * width, minimap_size * width);
}

// Reset colors
draw_set_color(c_white);
draw_set_alpha(1);
surf = -1;

selected_tower = -1;

// Unlocked towers
unlocked_towers_objs = ds_list_create();
unlocked_towers_icons = ds_list_create();
unlocked_towers_costs = ds_list_create();

var current_key = ds_map_find_first(tower_info);
var size = ds_map_size(tower_info);

for (var i = 0; i < size; i++) {
	var cost = ds_map_find_value(ds_map_find_value(tower_info, current_key), "cost");

	if (cost > 0) {
		ds_list_add(unlocked_towers_objs, asset_get_index("obj_tower_" + current_key));
		ds_list_add(unlocked_towers_icons, asset_get_index("spr_tower_" + current_key + "_" + string(game_theme)));
		ds_list_add(unlocked_towers_costs, cost);
	}
	
    current_key = ds_map_find_next(tower_info, current_key);
}

bottom_height = 0.2;
side_width = 0.12;
minimap_size = 0.15;
minimap_border = 3;
game_controls_width = 0.25;
selected_tower_sprite_padding = 0.01;
tower_button_sprite_padding = 0.02;

view_scale_speed = 60;
view_width_min = 512;
view_width = 1024;
view_width_initial = view_width;
view_width_max = 2048;

camera_move_speed = 25;
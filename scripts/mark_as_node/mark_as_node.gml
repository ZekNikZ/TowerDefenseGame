/// mark_as_node()

is_input_node = false;
is_output_node = false;
is_transfer_node = false;
is_storage_node = false;
is_health_node = false;

if (argument_count == 3) {
	tower_name = ds_list_find_value(ds_map_find_value(tower_info[? argument[0]], "names"), game_theme);
    tower_desc = ds_list_find_value(ds_map_find_value(tower_info[? argument[0]], "descriptions"), game_theme);
	tower_type_icon = argument[1];
	tower_cost = argument[2];
	
	sprite_index = asset_get_index("spr_tower_" + argument[0] + "_" + string(game_theme));
}
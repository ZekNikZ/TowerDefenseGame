surf = -1;

selected_tower = -1;

// Unlocked towers
unlocked_towers_objs = ds_list_create();
unlocked_towers_icons = ds_list_create();
unlocked_towers_costs = ds_list_create();

ds_list_add(unlocked_towers_objs, obj_tower_battery_test);
ds_list_add(unlocked_towers_icons, spr_tower_battery_test);
ds_list_add(unlocked_towers_costs, 2000);

ds_list_add(unlocked_towers_objs, obj_tower_solar_collector_test);
ds_list_add(unlocked_towers_icons, spr_tower_solar_collector_test);
ds_list_add(unlocked_towers_costs, 1000);

ds_list_add(unlocked_towers_objs, obj_tower_turret_test);
ds_list_add(unlocked_towers_icons, spr_tower_turret_test);
ds_list_add(unlocked_towers_costs, 3000);


bottom_height = 0.2;
side_width = 0.12;
minimap_size = 0.15;
minimap_border = 3;
game_controls_width = 0.25;
selected_tower_sprite_padding = 0.01;
tower_button_sprite_padding = 0.02;
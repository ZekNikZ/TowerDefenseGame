srcSetup();

ca = 85;
cg = 155;
cy = 165;
cb = 185;

tilemap_id = layer_tilemap_get_id(layer_get_id("lyr_terrain"));

for (var xx = 0; xx < width * scale; ++xx) {
    for (var yy = 0; yy < height * scale; ++yy) {
		tilemap_set(tilemap_id, scrGetColor(ds_grid_get(octvalgrid, xx, yy)), xx, yy);
    }
}

var placed = false;
var X = room_width / 2;
var Y = room_height / 2;
var R = 0;
var A = 0;

while (!placed) {
	if (tile_get_index(tilemap_get_at_pixel(tilemap_id, X + lengthdir_x(R, A), Y + lengthdir_y(R, A))) < 4 &&
	    tile_get_index(tilemap_get_at_pixel(tilemap_id, X + lengthdir_x(R, A) - 128, Y + lengthdir_y(R, A))) < 4 &&
		tile_get_index(tilemap_get_at_pixel(tilemap_id, X + lengthdir_x(R, A) + 128, Y + lengthdir_y(R, A))) < 4) {
		instance_create_layer(X, Y, "lyr_towers", obj_tower_command_centre_test);

		if (random(1) < 0.5) {
			instance_create_layer(X - 128, Y, "lyr_towers", obj_tower_solar_collector_test);
			instance_create_layer(X + 128, Y, "lyr_towers", obj_tower_turret_test);
		} else {
			instance_create_layer(X + 128, Y, "lyr_towers", obj_tower_solar_collector_test);
			instance_create_layer(X - 128, Y, "lyr_towers", obj_tower_turret_test);
		}
		
		placed = true;
	}
	
	R += 10;
	A = random_range(0, 360);
}

camera_set_up = false;
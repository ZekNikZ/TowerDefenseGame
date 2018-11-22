srcSetup();

switch (game_world) {
	case World.NORMAL:
		ca = 85;
		cg = 155;
		cy = 165;
		cb = 185;
		break;
	case World.DRY:
		ca = 90;
		cg = 160;
		cy = 180;
		cb = 200;
		break;
	case World.WET:
		ca = 80;
		cg = 140;
		cy = 150;
		cb = 170;
		break;
}

tilemap_id = layer_tilemap_get_id(layer_get_id("lyr_terrain"));

for (var xx = 0; xx < width * scale; ++xx) {
    for (var yy = 0; yy < height * scale; ++yy) {
		var v = scrGetColor(ds_grid_get(octvalgrid, xx, yy));
		tilemap_set(tilemap_id, v, xx, yy);
		if (v == 4) {
			instance_create_layer(xx * 32, yy * 32, "lyr_wall", obj_wall);
		}
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
		instance_create_layer(X, Y, "lyr_towers", obj_tower_command_center);

		if (random(1) < 0.5) {
			instance_create_layer(X - 128, Y, "lyr_towers", obj_tower_solar_collector);
			instance_create_layer(X + 128, Y, "lyr_towers", obj_tower_turret);
		} else {
			instance_create_layer(X + 128, Y, "lyr_towers", obj_tower_solar_collector);
			instance_create_layer(X - 128, Y, "lyr_towers", obj_tower_turret);
		}
		
		placed = true;
	}
	
	R += 10;
	A = random_range(0, 360);
}

alarm_set(0, 2);

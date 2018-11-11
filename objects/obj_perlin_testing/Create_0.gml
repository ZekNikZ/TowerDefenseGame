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
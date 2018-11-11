/// @description  Initialization

randomize();

// Width, height, and scale of generated map
// Width and height are the actual generation size
// and scale is the display size
width = 4;
height = 4;
scale = 32;

// Number of layered octaves
octaves = 1;

// Resolution (pixels) of a single graphical tile
res = 2;

// Grid for generation vectors and held values
octvectors = scrOctaveGen(octaves);
octvalgrid = ds_grid_create(width * scale, height * scale);

scrGenerateOctaveNoise(octvalgrid, octvectors);
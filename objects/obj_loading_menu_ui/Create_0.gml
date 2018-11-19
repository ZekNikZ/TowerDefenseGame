window_center();

dot_counter = 0;
dot_counter_max = 50;
dots = 1;

loading_progress = 0;

width = window_get_width();
height = window_get_height();

enum Theme {
	NORMAL = 0,
	MEDIVAL = 1,
	FUTURISTIC = 2
}

enum World {
	NORMAL = 0,
	DRY = 1,
	WET = 2
}

globalvar tower_info;
globalvar game_theme;
globalvar game_world;
game_theme = Theme.NORMAL;
game_world = World.NORMAL;

var theJsonFile = file_text_open_read("towers.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

var tower_data = json_decode(theData);
tower_info = tower_data[? "towers"];
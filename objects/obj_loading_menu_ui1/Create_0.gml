window_center();

dot_counter = 0;
dot_counter_max = 50;
dots = 1;

loading_progress = 0;

width = window_get_width();
height = window_get_height();

enum Theme {
	MEDIVAL = 0,
	FUTURISTIC = 1,
	ALIEN = 2
}

globalvar tower_info;
globalvar game_theme;
game_theme = Theme.MEDIVAL;

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
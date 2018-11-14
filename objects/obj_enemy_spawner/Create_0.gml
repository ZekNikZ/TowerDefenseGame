spawn_counter = 60 * 2;
spawn_counter_max = 60 * 1;
spawned_count = 0;
spawned_count_max = 120;

spawn_radius_add = 300;

origin_object = obj_tower_command_centre_test;

enum WAVE_STATE {
	BETWEEN,
	SETUP,
	ATTACK
}
globalvar WAVE_STATES;
WAVE_STATES = 3;

wave_num = 0;
wave_state = WAVE_STATE.BETWEEN;
between_wave_time = 15 * fps;

globalvar WAVE_ALARM;
WAVE_ALARM = 0;

var theJsonFile = file_text_open_read("waves.json");
var theData = "";
while (!file_text_eof(theJsonFile))
{
    theData += file_text_read_string(theJsonFile);
    file_text_readln(theJsonFile);
}
file_text_close(theJsonFile);

var wave_data = json_decode(theData);
wave_info = wave_data[? "waves"];

alarm_set(WAVE_ALARM, between_wave_time);

spawn_index = 0;
spawn_count = 0;
spawn_complete = false;

show_debug_message(ds_map_find_value(wave_info[| wave_num], "spawn_time"));
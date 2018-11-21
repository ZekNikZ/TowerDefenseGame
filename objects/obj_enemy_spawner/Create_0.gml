origin_object = obj_tower_command_center;

enum WAVE_STATE {
	BETWEEN,
	SETUP,
	ATTACK
}
globalvar WAVE_STATES;
WAVE_STATES = 3;

wave_num = 0;
wave_state = WAVE_STATE.BETWEEN;
between_wave_time = 2 * 60;

SPAWN_ALARM = 1;
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

alarm_set(WAVE_ALARM, between_wave_time * 10);

spawn_index = 0;
spawn_count = 0;
spawn_complete = true;
spawn_radius_add = 500;
spawn_cooldown = 0;
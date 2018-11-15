switch (wave_state) {
	case WAVE_STATE.BETWEEN:
		wave_state = WAVE_STATE.SETUP;
		spawn_index = 0;
		spawn_count = 0;
		spawn_complete = false;
		break;
	case WAVE_STATE.SETUP:
		wave_state = WAVE_STATE.ATTACK;
		alarm_set(WAVE_ALARM, ds_map_find_value(wave_info[| wave_num], "wave_time") * 60);
		break;
	case WAVE_STATE.ATTACK:
		wave_state = WAVE_STATE.BETWEEN;
		++wave_num;
		alarm_set(WAVE_ALARM, between_wave_time);
		break;
}
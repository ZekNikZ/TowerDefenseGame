if (wave_state != WAVE_STATE.SETUP) {
	alarm_set(0, 50);
} else {
	spawn_complete = true;
	alarm_set(0, 50);
}
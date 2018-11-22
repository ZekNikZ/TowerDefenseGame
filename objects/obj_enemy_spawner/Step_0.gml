if (game_paused && !alarm_paused) {
	alarm_0_val = alarm_get(0);
	alarm_1_val = alarm_get(1);
	alarm_set(0, -1);
	alarm_set(1, -1);
	alarm_paused = true;
} else if (!game_paused && alarm_paused) {
	alarm_set(0, alarm_0_val);
	alarm_set(1, alarm_1_val);
	alarm_0_val = -1;
	alarm_1_val = -1;
	alarm_paused = false;
}
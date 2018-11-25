if (!game_paused) {
	if (attack_counter <= 0) {
		step_used_energy = 750;
		//attack_counter = attack_cooldown;
	} else {
		--attack_counter;
		step_used_energy = 0;
	}
} else {
	step_used_energy = 0;
}

ot_used_energy = step_used_energy;

event_inherited();
if (keyboard_check(vk_space)) {
	step_used_energy = 40;
} else {
	step_used_energy = 0;
}

ot_used_energy = step_used_energy;

event_inherited();
++counter;
//step_generated_energy = floor(5 * (sin(2 * pi / 900 * counter) + 1));

if (keyboard_check_pressed(ord("P"))) {
	debug_energy_gen = 10 - debug_energy_gen;
}

step_generated_energy = debug_energy_gen;

event_inherited();
//step_generated_energy = 30;

if (hp <= 0) {
	game_restart();
}

if (tower_cost_deduction > 0) {
	step_used_energy = tower_cost_deduction;
} else {
	step_used_energy = 0;
}

ot_used_energy = step_used_energy;

event_inherited();
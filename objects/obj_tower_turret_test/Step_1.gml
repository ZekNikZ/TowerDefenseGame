target_enemy = instance_nearest(x, y, obj_enemy_prt);

if (target_enemy != noone && instance_exists(target_enemy) && distance_to_object(target_enemy) <= attack_range) {
//if (keyboard_check_pressed(vk_space)) {
	step_used_energy = 500;
} else {
	target_enemy = noone;
	step_used_energy = 0;
}

ot_used_energy = step_used_energy;

event_inherited();
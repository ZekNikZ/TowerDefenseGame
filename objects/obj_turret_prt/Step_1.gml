/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if(instance_exists(target_enemy)) {
	image_angle = point_direction(x,y,target_enemy.x,target_enemy.y);
}
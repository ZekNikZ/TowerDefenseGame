/// @description Insert description here
// You can write your code in this editor

can_place = false;
click = 0;
nearest_tower = 0;
proximity_check_type = 1;

enum CursorMode {
	NONE,
	SELECT,
	PLACE
}

mode = CursorMode.SELECT;

camera_move_speed = 25;
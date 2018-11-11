var camera_move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var camera_move_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

camera_set_view_pos(view_camera[0], 
	clamp(camera_get_view_x(view_camera[0]) + camera_move_x * camera_move_speed * view_width / view_width_initial, 0, room_width - camera_get_view_width(view_camera[0])),
	clamp(camera_get_view_y(view_camera[0]) + camera_move_y * camera_move_speed * view_width / view_width_initial, 0, room_height - camera_get_view_height(view_camera[0]))
)
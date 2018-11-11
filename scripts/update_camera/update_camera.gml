var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);
var ch = camera_get_view_height(view_camera[0]);
	
var ny = argument0 * ch / cw;

camera_set_view_pos(view_camera[0], cx + (cw - argument0) / 2, cy + (ch - ny) / 2);

camera_set_view_size(view_camera[0], argument0, ny);
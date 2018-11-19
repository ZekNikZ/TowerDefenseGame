if (!surface_exists(surf)) {
    surf = surface_create(room_width, room_height);
}


if (surface_exists(surf)) {
	shader_set(sdr_fow);
	//draw_surface(surf, 0, 0);
	shader_reset();
	
	surface_set_target(surf);
	draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
	surface_reset_target();
}
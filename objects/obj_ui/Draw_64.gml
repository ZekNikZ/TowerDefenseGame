var bottom_height = 0.2;
var side_width = 0.1;
var minimap_size = 0.15;
var minimap_border = 3;
var game_controls_width = 0.25;

width = window_get_width();
height = window_get_height();

// Draw bottom rectangle
draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, height - bottom_height * height, width, height, false);

draw_rectangle(width - side_width * width, 0, width, height - bottom_height * height - 1, false);

draw_rectangle(0, height - bottom_height * height, game_controls_width * width, height, false);


draw_set_color(c_black);
draw_set_alpha(1);
draw_rectangle(0, 0, 2 * minimap_border + minimap_size * width, 2 * minimap_border + minimap_size * width, false);

//view_set_wport(2, 4096);
//view_set_hport(2, 4096);
//view_enabled[1] = true;
//view_wport[1] = 4096;
//view_hport[1] = 4096;

if (!surface_exists(surf)) {
    surf = surface_create(camera_get_view_width(view_camera[1]), camera_get_view_height(view_camera[1]));
    view_surface_id[1] = surf;
}


if (surface_exists(surf)) {
	//draw_surface(surf, 3, 3);
	draw_surface_stretched(surf, minimap_border, minimap_border, minimap_size * width, minimap_size * width);
}


// Reset colors
draw_set_color(c_white);
draw_set_alpha(1);
if (message_num < wave_messages) {
	story_text = messages[| message_num];
	with(obj_story_popup) { event_user(0); }
	
	++message_num;
} else {
	if (wave_num + 1 < ds_list_size(wave_info)) {
		var stories = ds_map_find_value(wave_info[| wave_num + 1], "stories");
		ds_list_clear(messages);
		var size = ds_list_size(stories) / 3;
		for (var i = 0; i < size; ++i) {
			ds_list_add(messages, stories[| 3 * i + game_theme]);
		}
		message_num = 0;
		wave_messages = size;
	}
}
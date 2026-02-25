if unlocked{
	audio_play_sound(snd_button,0,0)
	obj_world_map_button.world_map = 0
	instance_destroy(obj_world_map_menu)
	if global.map_id != map_id{
		global.map_name = map_name
		global.map_id = map_id
	}
	if room != room_target{
		room_goto(room_target)
	}
}
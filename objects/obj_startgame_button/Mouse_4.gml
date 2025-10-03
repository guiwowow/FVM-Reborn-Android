if on_click and obj_player_info_ui.menu_type == 0{
	audio_play_sound(snd_button,0,0)
	room_goto(room_map)
	global.map_name = "美味岛"
	global.map_id = "delicious_island"
}
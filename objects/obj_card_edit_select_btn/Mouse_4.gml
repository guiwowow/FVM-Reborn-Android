audio_play_sound(snd_button,0,0)
if btn_type == "confirm"{
	global.save_data.unlocked_cards[obj_card_edit_menu.target_card_index].level = obj_card_edit_menu.target_current_info[? "level"]
	global.save_data.unlocked_cards[obj_card_edit_menu.target_card_index].shape = obj_card_edit_menu.target_current_info[? "shape"]
	global.save_data.unlocked_cards[obj_card_edit_menu.target_card_index].skill = obj_card_edit_menu.target_current_info[? "skill"]
	save_file()
}
instance_destroy(obj_card_edit_menu)
obj_package_bg.is_submenu_opened = false
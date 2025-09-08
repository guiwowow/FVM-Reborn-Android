audio_play_sound(snd_button,0,0)
if btn_type == "confirm"{
	var card_id = global.player_deck[| obj_card_edit_menu.target_card_index*2];
	var length = array_length(global.save_data.unlocked_cards)
	var info_index = 0
	for (var i = 0;i < length;i++){
		if global.save_data.unlocked_cards[i].id == card_id{
			info_index = i
			break
		}
	}
	global.save_data.unlocked_cards[info_index].level = obj_card_edit_menu.target_current_info[? "level"]
	global.save_data.unlocked_cards[info_index].shape = obj_card_edit_menu.target_current_info[? "shape"]
	global.save_data.unlocked_cards[info_index].skill = obj_card_edit_menu.target_current_info[? "skill"]
	
	save_file()
}
obj_package_bg.is_submenu_opened = false
instance_destroy(obj_card_edit_menu)
audio_play_sound(snd_button,0,0)
if btn_type == "plus"{
	obj_card_edit_menu.target_current_info[? target_info] += 1
}
else if btn_type == "subtract"{
	obj_card_edit_menu.target_current_info[? target_info] -= 1
}
else if btn_type == "max"{
	if target_info == "level"{
		obj_card_edit_menu.target_current_info[? target_info] = 16
	}
	else if target_info == "shape"{
		obj_card_edit_menu.target_current_info[? target_info] = 2
	}
	else if target_info == "skill"{
		obj_card_edit_menu.target_current_info[? target_info] = 8
	}
}
else if btn_type == "min"{
	obj_card_edit_menu.target_current_info[? target_info] = 0
}
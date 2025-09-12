if not obj_shop_bg.is_submenu_opened and not is_disabled{
	
	audio_play_sound(snd_button,0,0)
	if btn_type == "card"{
		if global.save_data.player.gold >= cost{
			//show_debug_message(global.save_data.player.gold)
			global.save_data.player.gold -= cost
			unlock_card(target_item,global.save_data.unlocked_items.max_card_level,0,global.save_data.unlocked_items.max_skill_level)
		}
		else{
			
		}
	}
}
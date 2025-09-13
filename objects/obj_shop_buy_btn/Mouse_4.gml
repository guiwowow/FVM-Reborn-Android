if not obj_shop_bg.is_submenu_opened and not is_disabled{
	
	audio_play_sound(snd_button,0,0)
	if btn_type == "card"{
		if global.save_data.player.gold >= cost{
			var inst = instance_create_depth(room_width/2,room_height/2,depth-3,obj_shop_buy_confirm)
			inst.banding_buy_btn = id
			obj_shop_bg.is_submenu_opened = true
			//show_debug_message(global.save_data.player.gold)
		}
		else{
			show_notice("金币不足",60)
		}
	}
}
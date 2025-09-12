if not obj_shop_bg.is_submenu_opened{

obj_shop_bg.shop_button_select = button_index
with obj_shop_bg{
		shop_list_recharge()
	}
audio_play_sound(snd_button,0,0)
}
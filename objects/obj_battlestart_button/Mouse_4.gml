if on_click and not instance_exists(obj_quit_confirm){
	if ds_list_size(global.selected_deck) > 0{
		button_pushed = true
		audio_play_sound(snd_button,0,0)
	}
}
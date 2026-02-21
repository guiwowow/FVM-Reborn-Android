if obj_task_bg.button_select != btn_index{
	obj_task_bg.button_select = btn_index
	with obj_task_bg{
		refresh_task_list()
	}
	audio_play_sound(snd_button,0,0)
}
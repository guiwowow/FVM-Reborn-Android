if type == "prev"{
	if obj_readyroom_manager.deck_first_slot_index > 0{
		obj_readyroom_manager.deck_first_slot_index -= 1
	}
}
else{
	if obj_readyroom_manager.deck_first_slot_index < 10{
		obj_readyroom_manager.deck_first_slot_index += 1
	}
}
audio_play_sound(snd_button,0,0)
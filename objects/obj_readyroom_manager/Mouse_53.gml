if hover_card_index != -1{
	if ds_list_size(global.selected_deck) < global.save_data.unlocked_items.max_slot{
		audio_play_sound(snd_button,0,0)
		var card_id = global.player_deck[| hover_card_index*2];
		add_to_deck(card_id,get_card_info_simple(card_id).shape)
	}
}
if hover_slot_index != -1{
	audio_play_sound(snd_button,0,0)
	ds_list_delete(global.selected_deck,hover_slot_index)
}
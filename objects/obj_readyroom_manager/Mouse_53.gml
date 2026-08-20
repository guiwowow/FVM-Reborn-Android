// 修复：安卓触摸→鼠标映射对一次物理点按可能重复触发本事件（本项目 4/7/53/54 事件编号都被当点击绑定），
// 同一手势 150ms 内只处理一次，防止同一张卡被 add 两次（两个槽位同卡）或同一槽被 delete 两次。
if (current_time - last_card_click_time < 150) {
	exit
}
last_card_click_time = current_time

if hover_card_index != -1 && !is_submenu_open{
	if deck_slot_first_empty() != -1{
		// 去重：卡已在卡组内则忽略（Draw_0 已选中卡片会置灰，但同一帧内的重复事件在置灰前还会再 add）
		var card_id = global.player_deck[| hover_card_index*2];
		var _dup = false
		for (var i = 0; i < ds_list_size(global.selected_deck); i++) {
			if global.selected_deck[| i][? "card_id"] == card_id {
				_dup = true
				break
			}
		}
		if (!_dup) {
			audio_play_sound(snd_button,0,0)
			add_to_deck(card_id,get_card_info_simple(card_id).shape)
		}
	}
}
if hover_slot_index != -1 && !is_submenu_open{
	if !deck_slot_is_empty(hover_slot_index){
		audio_play_sound(snd_button,0,0)
		remove_from_deck(hover_slot_index)
	}
}
if(mouse_x > 785 && mouse_x < 1546 && mouse_y > 762 && mouse_y < 980) && !is_submenu_open{
	audio_play_sound(snd_button,0,0)
	var inst = instance_create_depth(0,0,-500,obj_level_preview)
	inst.enemy_type_list = enemy_type_list
	inst.boss_type_list = boss_type_list
}
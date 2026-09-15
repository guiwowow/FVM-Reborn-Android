// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
ice_timer = 0
frozen_timer = 0

if target_card != ""{
	var card_save_data = get_card_info_simple(target_card)
	var card_slot_data = deck_get_card_data(target_card,card_save_data.shape)

	plant_type = card_slot_data[? "plant_type"]
}
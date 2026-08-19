// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (global.slowmo_active) {
    if (!variable_instance_exists(id, "__slow_base_ispeed")) __slow_base_ispeed = image_speed;
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = __slow_base_ispeed;
} else if (variable_instance_exists(id, "__slow_base_ispeed")) {
    image_speed = __slow_base_ispeed;
}
if not hp_modified{
	if global.difficulty == 0{
		maxhp *= 0.8
		hp *= 0.8
		helmet_hp *= 0.8
		helmet_max_hp *= 0.8
		shield_hp *= 0.8
		shield_max_hp *= 0.8
	}
	if global.difficulty >= 3{
		if global.map_id != "tower_cake"{
			maxhp *= 1.2
			hp *= 1.2
			helmet_hp *= 1.2
			helmet_max_hp *= 1.2
			shield_hp *= 1.2
			shield_max_hp *= 1.2
		}
		else{
			maxhp *= 1.2
			hp *= 1.2
			helmet_hp *= 1.2
			helmet_max_hp *= 1.2
			shield_hp *= 1.2
			shield_max_hp *= 1.2
		}
	}
	if is_real(global.level_file.version) && !is_boss{
		maxhp *= global.level_file.hp_modify
		hp *= global.level_file.hp_modify
		helmet_hp *= global.level_file.hp_modify
		helmet_max_hp *= global.level_file.hp_modify
		shield_hp *= global.level_file.hp_modify
		shield_max_hp *= global.level_file.hp_modify
	}
	
	hp_modified = true
}

frozen_timer = 0
ice_timer = 0
scare_timer = 0
stun_timer = 0
y_move = 0
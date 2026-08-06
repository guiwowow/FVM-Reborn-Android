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
// Inherit the parent event
if not summon{
	state = ENEMY_STATE.ACTING
	if hp <= 0{
		summon = true
		state = ENEMY_STATE.NORMAL
	}
}

	if state == ENEMY_STATE.ACTING{
		sprite_index = spr_minion_mouse_summon
	}
	else{
		sprite_index = spr_minion_mouse
	}

event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ACTING{
	
	image_index = floor(timer/flash_speed) mod 10 
	
	if timer >= flash_speed * 10 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_minion_mouse
		summon = true
	}
}
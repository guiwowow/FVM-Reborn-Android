// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
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
		sprite_index = spr_warrior_minion_mouse_summon
	}
	else{
		sprite_index = spr_warrior_minion_mouse
	}

event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ACTING{
	
	image_index = floor(timer/flash_speed) mod 10 
	
	if timer >= flash_speed * 10 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_warrior_minion_mouse
		summon = true
	}
}
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

if hp > maxhp - helmet_hp{
	sprite_index = spr_machine_mouse
}
else{
	sprite_index = spr_machine_mouse
}

event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ATTACK && not acted{
	state = ENEMY_STATE.ACTING
	timer = 0
	acted = true
}
if state == ENEMY_STATE.ACTING{
	if hp > maxhp * hurt_rate{
		image_index = floor(timer/flash_speed) mod 4 + move_anim * 2
	}
	else{
		image_index = floor(timer/flash_speed) mod 4 + 3 + move_anim * 2
	}
	if timer >= 60{
		can_explode = true
		instance_destroy()
	}
	if hp <= 0{
		state = ENEMY_STATE.NORMAL
	}
}
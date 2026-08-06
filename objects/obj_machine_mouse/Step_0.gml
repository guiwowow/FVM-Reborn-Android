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
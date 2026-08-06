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
if hp <= 0 && state != ENEMY_STATE.DEAD{
	state = ENEMY_STATE.DEAD
	sprite_index = spr_zombie_with_wallnut
	timer = 0
}

if shield_hp > 0{
	sprite_index = spr_zombie_with_wallnut_shield
	move_anim = 12
	attack_anim = 6
	move_speed = 0.36
}
else{
	if sprite_index != spr_zombie_with_wallnut_drop{
		sprite_index = spr_zombie_with_wallnut
	}
	move_anim = 8
	attack_anim = 4
	atk_cycle = 18
	move_speed = 0.90
}
if shield_hp <= 0 && not dropped && hp > 0{
	timer = 0
	state = ENEMY_STATE.ACTING
	sprite_index = spr_zombie_with_wallnut_drop
	dropped = true
}
event_inherited();
if global.is_paused or is_frozen{
	exit
}
if dropped && state = ENEMY_STATE.ACTING{
	if hp > maxhp * hurt_rate{
		image_index = floor(timer/flash_speed) mod 10
	}
	else{
		image_index = floor(timer/flash_speed) mod 10 + 9
	}
	if timer >= flash_speed * 10 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_zombie_with_wallnut
	}
}
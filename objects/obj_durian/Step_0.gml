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
if global.is_paused{
	exit
}
event_inherited(); 
if is_frozen{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

var has_enemy = true

destroy_timer ++
if destroy_timer > max_time{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}

cycle = 60

//攻击逻辑
if state != CARD_STATE.SLEEP && state != CARD_STATE.AWAKE{
	if (has_enemy) {
	    if (attack_timer <= cycle - attack_anim * current_flash_speed) {
	        attack_timer++;
	    } else if (attack_timer < cycle) {
	        attack_timer++;
	        state = CARD_STATE.ATTACK;
	    } else {
	        attack_timer = 0;
	        state = CARD_STATE.IDLE;
	    }
		if (attack_timer == cycle - 8 * current_flash_speed) && state == CARD_STATE.ATTACK{
			event_user(1)
	    }
	} else {
	    // 没有符合条件的敌人，重置状态
	    attack_timer = 0;
	    state = CARD_STATE.IDLE;
	}
}



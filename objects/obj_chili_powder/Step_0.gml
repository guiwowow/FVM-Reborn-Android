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
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

var has_enemy = false
var _range = 121

with obj_enemy_parent{
	if abs(x - other.x) <= _range && grid_row == other.grid_row{
		has_enemy = true
		other.enemy_encounted = true
	}
}

if state != CARD_STATE.SLEEP && state != CARD_STATE.RELAX{
	//攻击逻辑
	if (enemy_encounted) {
	    if (attack_timer <= attack_anim * current_flash_speed) {
	        attack_timer++;
			state = CARD_STATE.ATTACK;
	    }
		if (attack_timer == attack_anim * current_flash_speed){
	        event_user(1); // 发射子弹
		}
	}
	else{
		state = CARD_STATE.IDLE
		attack_timer = 0
	}
}

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
if hp <= 0 && state != ENEMY_STATE.DEAD{
	timer = 0
	state = ENEMY_STATE.DEAD
	sprite_index = spr_conch_mouse
}
// Inherit the parent event
event_inherited();

if is_frozen || is_scare || is_stun{
	exit
}

if hp > 0 && state != ENEMY_STATE.DEAD{
	blow_timer --
	if blow_timer <= 0 &&(state == ENEMY_STATE.NORMAL || state == ENEMY_STATE.ATTACK){
		timer = 0
		state = ENEMY_STATE.APPEAR
		sprite_index = spr_conch_mouse_ready
	}
	if state == ENEMY_STATE.APPEAR{
		if hp > maxhp * hurt_rate{
			image_index = floor(timer/flash_speed) mod 16
		}
		else{
			image_index = floor(timer/flash_speed) mod 16 + 16
		}
		if timer >= 16 * flash_speed - 1{
			timer = 0
			state = ENEMY_STATE.ACTING
			sprite_index = spr_conch_mouse_act
		}
	}
	if state == ENEMY_STATE.ACTING{
		if hp > maxhp * hurt_rate{
			image_index = floor(timer/flash_speed) mod 15
		}
		else{
			image_index = floor(timer/flash_speed) mod 15 + 15
		}
		if timer == 8 * 5 - 1{
			var inst = instance_create_depth(x-120,y-135,depth-1,obj_conch_bullet)
			inst.grid_row = grid_row
		}
		if timer >= 15 * flash_speed - 1{
			timer = 0
			state = ENEMY_STATE.NORMAL
			sprite_index = spr_conch_mouse
			blow_timer = blow_cooldown
		}
	}
}
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
	timer = 0
	sprite_index = spr_mirror_mouse
}

event_inherited();



if global.is_paused || is_frozen || is_stun || is_scare{
	exit
}
if state != ENEMY_STATE.DEAD{
	if perform_timer < perform_cooldown{
		perform_timer++
	}
	else{
		if state != ENEMY_STATE.ACTING{
			timer = 0
			state = ENEMY_STATE.ACTING
			sprite_index = spr_mirror_mouse_acting
		}
	}

	if state = ENEMY_STATE.ACTING{
		if hp > maxhp * hurt_rate{
			image_index = floor(timer/flash_speed) mod 32
		}
		else{
			image_index = floor(timer/flash_speed) mod 34 + 32
		}
		if timer >= flash_speed * 5 && timer <= flash_speed * 28 - 1{
			with obj_flame{
				is_collected = false
				is_capture = true
				speed = 15
				if global.is_paused{
					speed = 0
				}
				direction = point_direction(x,y,other.x+20,other.y-250)
				if (abs(x - other.x-20)<=10 && abs(y - other.y+250)<=10){
					other.return_flame += value
					instance_destroy()
				}
			}
		}
		if timer == flash_speed * 28{
			with obj_flame{
				is_capture = false
				speed = 0
			}
		}
		if timer == flash_speed * 33 - 1{
			state = ENEMY_STATE.NORMAL
			sprite_index = spr_mirror_mouse
			timer = 0
			perform_timer = 0
		}
	}
}
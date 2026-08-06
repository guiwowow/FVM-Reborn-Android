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
if global.is_paused{
	exit
}

if (hp <= 0) {
	sprite_index = spr_machine_beehive_mouse
	if state != ENEMY_STATE.DEAD{
	    timer = 0;
	    state = ENEMY_STATE.DEAD;
	}
    target_plant = noone;  // 清除攻击目标
}
event_inherited();

var current_move_speed = 0
if is_slowdown{
	flash_speed = 10
	current_move_speed = move_speed / 2
}
else{
	flash_speed = 5
	current_move_speed = move_speed
}

if is_frozen || is_stun || scare_timer > 0{
	exit
}

if hp > 0 && state != ENEMY_STATE.DEAD{
	if (grid_col <= 7 || state == ENEMY_STATE.ATTACK) && !bee_released{
		anim_timer = 0
		state = ENEMY_STATE.ACTING
		bee_released = true
		if grid_row == 0{
			sprite_index = spr_machine_beehive_release_2
		}
		else if grid_row == global.grid_rows-1{
			sprite_index = spr_machine_beehive_release_3
		}
		else{
			sprite_index = spr_machine_beehive_release_1
		}
	}
	if state == ENEMY_STATE.ACTING{
		anim_timer++
		if hp > maxhp*hurt_rate{
			image_index = floor(anim_timer/5) mod 46
		}
		else{
			image_index = floor(anim_timer/5) mod 46 + 46
		}
		if anim_timer == 32*5-1{
			var summon_grid_pos = get_grid_position_from_world(x,y)
			instance_create_depth(summon_grid_pos.x+15,summon_grid_pos.y+38,depth,obj_machine_bee)
			if grid_row > 0{
				instance_create_depth(summon_grid_pos.x+15,summon_grid_pos.y+38-global.grid_cell_size_y,depth,obj_machine_bee)
			}
			if grid_row < global.grid_rows-1{
				instance_create_depth(summon_grid_pos.x+15,summon_grid_pos.y+38+global.grid_cell_size_y,depth,obj_machine_bee)
			}
		}
		if anim_timer == 46*5 - 1{
			state = ENEMY_STATE.NORMAL
			anim_timer = 0
			sprite_index = spr_machine_beehive_mouse
		}
	}
}
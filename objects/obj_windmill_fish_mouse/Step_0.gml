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
	sprite_index = spr_windmill_fish_mouse_land
	if state != ENEMY_STATE.DEAD{
	    timer = 0;
	    state = ENEMY_STATE.DEAD;
	}
    target_plant = noone;  // 清除攻击目标
}
event_inherited();

var current_move_speed = 0
if is_slowdown{
	flash_speed = 12
	current_move_speed = move_speed / 2
}
else{
	flash_speed = 6
	current_move_speed = move_speed
}

var target_pos = get_world_position_from_grid(target_col,grid_row)

if hp > 0 && state != ENEMY_STATE.DEAD{
	if state == ENEMY_STATE.APPEAR{
		anim_timer++
		x -= current_move_speed * move_speed_modify
		image_index = floor(anim_timer/flash_speed) mod 6
		if hp <= (maxhp-helmet_hp) || x <= target_pos.x+80{
			state = ENEMY_STATE.ACTING
			sprite_index = spr_windmill_fish_mouse_drop
			anim_timer = 0
		}
	}
	if state == ENEMY_STATE.ACTING{
		target_type = "normal"
		anim_timer++
		image_index = floor(anim_timer/flash_speed) mod 6
		y += 1
		if is_slowdown{
			y -= 0.5
		}
		if anim_timer == 1{
			if hp > (maxhp-helmet_hp){
				var inst = instance_create_depth(target_pos.x+8,target_pos.y,depth-1,obj_barrier)
				inst.sprite_index = spr_windmill_fish_mouse_urchin
			}
		}
		if anim_timer >= flash_speed * 6{
			state = ENEMY_STATE.NORMAL
			sprite_index = spr_windmill_fish_mouse_land
			move_speed = 0.36
			anim_timer = 0
			helmet_hp = 0
		}
	}
}
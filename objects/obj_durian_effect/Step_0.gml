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
grid_pos = get_grid_position_from_world(x,y)
if timer < max_time timer++
else can_destroy = true

if not can_destroy{
	if timer <= 20{
		image_index = floor(timer/5) mod 4
	}
	else{
		image_index = floor((timer-20)/5) mod 10 + 4
	}
	if timer == 20{
	
		with obj_enemy_parent{
			if (grid_col == other.grid_pos.col && grid_row == other.grid_pos.row && can_hit(other.target_type,target_type)){
				
				hp -= other.damage
				event_user(0)
				if other.shape >= 1{
					if ice_timer < 240{
						ice_timer = 240
					}
				}
				
			}
		}
	}
}
else{
	image_index = floor((timer-max_time)/5) mod 4 + 14
	timer ++
	if timer >= max_time + 20{
		instance_destroy()
	}
}
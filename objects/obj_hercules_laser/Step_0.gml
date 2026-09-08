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
timer++

var grid_pos = get_grid_position_from_world(x,y)

if state == "start"{
	if timer <= 15 * 5 - 1{
		image_index = floor(timer/5) mod 15
	}
	else{
		image_index = 14
	}
	if l_type == 0{
		target_col = grid_pos.col
		x += move_speed
		if x <= get_world_position_from_grid(0,0).x || x >= get_world_position_from_grid(8,0).x{
			image_alpha -= 0.1
			if image_alpha <= 0{
				instance_destroy()
			}
		}
	}
	else{
		y += move_speed
		target_row = grid_pos.row
		if y <= get_world_position_from_grid(0,0).y || y >= get_world_position_from_grid(8,6).y{
			image_alpha -= 0.1
			if image_alpha <= 0{
				instance_destroy()
			}
		}
	}
}

with obj_card_parent{
	if grid_col == other.target_col && grid_row == other.target_row && plant_type != "lilypad" &&
	plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
		if hp >= max_hp{
			obj_task_manager.card_loss++
		}
		instance_destroy()
	}
}
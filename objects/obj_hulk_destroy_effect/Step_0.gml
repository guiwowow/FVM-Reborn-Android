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

timer ++

image_index = floor(timer/5) mod 22

if timer == 1 || timer == 5 * 5 + 2 || timer == 8 * 5 + 2{
	if !skill_dropped{
		with obj_card_parent{
			if grid_col == other.target_col - other.destroy_times && grid_row >= other.target_row-2 && grid_row <= other.target_row &&
			plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
				if hp >= max_hp{
					obj_task_manager.card_loss++
				}
				instance_destroy()
			}
		}
	}
	else{
		with obj_card_parent{
			if grid_col == other.target_col - other.destroy_times && grid_row == other.target_row &&
			plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
				if hp >= max_hp{
					obj_task_manager.card_loss++
				}
				instance_destroy()
			}
		}
	}
	destroy_times ++
}

if timer >= 22 * 5 - 1{
	instance_destroy()
}
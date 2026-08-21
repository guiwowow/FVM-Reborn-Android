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
	image_speed = 0
	exit
}
else{
	image_speed = 1
}

var target_x = get_world_position_from_grid(target_col,row).x

if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}

if state == "move"{
	x += move_speed
	y -= cvspeed
	//cvspeed -= cgravity

	if x >= target_x - 10 && x <= target_x + 10{
		state = "idle"
	}
}

if state == "idle"{
	timer++
	if timer == 30{
		var erase_col = target_col
		var erase_row = row
	
		with obj_card_parent{
			if plant_id != "player" && plant_type != "coffee" && plant_id != "cotton_candy" && !invincible && grid_col == erase_col && grid_row == erase_row{
				if hp >= max_hp{
					obj_task_manager.card_loss ++
				}
				instance_destroy()
			}
		}
	}
	if timer > 60{
		image_alpha -= 0.1
		if image_alpha <= 0.1{
			instance_destroy()
		}
	}
}
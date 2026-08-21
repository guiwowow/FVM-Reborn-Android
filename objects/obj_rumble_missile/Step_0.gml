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
if state == "start"{
	image_index = floor(timer/5) mod 4
	y -= 15
	if y <= -200{
		var target_pos = get_world_position_from_grid(target_col,target_row)
		x = target_pos.x 
		y = target_pos.y - room_height
		state = "drop"
	}
}
if state == "drop"{
	image_index = floor(timer/5) mod 4 + 4
	var target_pos = get_world_position_from_grid(target_col,target_row)
	y += 15
	if y >= target_pos.y{
		with obj_card_parent{
			if grid_col == other.target_col &&grid_row == other.target_row &&plant_id != "player"{
				if hp >= max_hp{
					obj_task_manager.card_loss++
				}
				instance_destroy()
			}
		}
		instance_create_depth(x,y,-200,obj_arno_bullet_effect)
		instance_destroy()
	}
}
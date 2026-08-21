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

image_angle -= 5

x = center_x + c_radius * cos(degtorad(2.4*-(timer+15)))
y = center_y + c_radius * sin(degtorad(2.4*-(timer+15)))

if timer mod 9 == 0{
	var erase_col = erase_pos[floor(timer/9)].col
	var erase_row = erase_pos[floor(timer/9)].row
	with obj_card_parent{
		if grid_col == erase_col && grid_row == erase_row && plant_id != "player" && plant_type != "coffee" && plant_id != "soda_bubble"{
			instance_destroy()
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
		}
	}
}

if timer >= 135{
	instance_destroy()
}
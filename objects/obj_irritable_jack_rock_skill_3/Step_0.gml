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
if timer <= 17 * 5 - 1{
	image_index = floor(timer /5) mod 17
	image_alpha = timer/20
	if timer <= 20{
		y += 15
	}
}
else{
	image_index = 16
	image_alpha-= 0.1
	if image_alpha <= 0
	instance_destroy()
}
if timer == 21{
	with obj_card_parent{
		if grid_col == other.target_col && grid_row == other.target_row &&
		plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
			instance_destroy()
		}
	}
}
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

if global.is_paused || can_destroy{
	image_speed = 0
}
else{
	image_speed = 1
}

if !global.is_paused && can_destroy{
	image_index = 1
	timer++
}

if can_destroy && timer > 10{
	image_index = 1
	image_alpha = 1 - 0.1 * (timer - 10)
	if timer >= 20{
		instance_destroy()
	}
}
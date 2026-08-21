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
if can_destroy{
	image_alpha -= 0.1
	if image_alpha<=0{
		instance_destroy()
	}
}
else{
	if type == "helmet"{
		image_angle -= 5
	}
	else if type == "shield"{
		image_angle += 5
	}
	x += x_speed
	y += y_speed
	y_speed += cgravity
	if water{
		image_alpha -= 0.04
		if type == "shield"{
			image_alpha -= 0.04
		}
		if image_alpha<=0{
			instance_destroy()
		}
	}
	if y >= ground_y && !water{
		can_destroy = true
	}
}
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
if timer < 20{
	timer ++
	scale += 0.05
	image_alpha +=0.05
}
else if timer < 30{
	timer ++
	scale -= 0.02
	
}
else if timer > 90{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}
else {
	timer ++
}


image_xscale = 1.8 * scale
image_yscale = 1.8 * scale
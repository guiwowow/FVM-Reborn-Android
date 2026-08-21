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
x += 15
timer++
if timer < 5*5{
	image_index = floor(timer/5)
}
else{
	image_index = floor(timer/5) mod 7+5
}

// 边界检查
if x > 2200 or y > 1200 or x < 0 or y < 0 {
    instance_destroy();
}
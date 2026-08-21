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
x += move_speed
timer++
if timer <= 4* 3 - 1{
	image_index = floor(timer/3) mod 4
}
else{
	if burnt{
		image_index = floor(timer/5) mod 5
	}
	else{
		image_index = floor(timer/5) mod 5 + 4
	}
}
col = get_grid_position_from_world(x,y).col
if ((col >= start_col + 5)&& shape == 0 )||(col >= start_col + 7){
	disabled = true
}
if disabled{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}

if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}
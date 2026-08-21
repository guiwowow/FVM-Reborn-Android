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
if state == "appear"{
	image_index = floor(timer/5) mod 7
	if timer >= 7 * 5 - 1{
		timer = 0
		state = "move"
	}
}
if state == "move"{
	image_index = floor(timer/5) mod 10 + 7
	y += y_move
	if timer >= 120{
		timer = 0
		state = "disappear"
	}
}
if state == "disappear"{
	image_index = floor(timer/5) mod 8 + 17
	if timer >= 8*5-1{
		instance_create_depth(x,y,depth,obj_ghost_mouse)
		instance_destroy()
	}
}
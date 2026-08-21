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
timer ++

if state == "appear"{
	image_index = (floor(timer/5))mod 4
	if timer == 4 * 5 - 1{
		timer = 0
		state = "act"
		disabled = false
	}
}
if state == "act"{
	image_index = (floor(timer/5))mod 8 + 4
	if timer >= 120{
		timer = 0
		state = "disappear"
		disabled = true
	}
}
if state == "disappear"{
	image_index = (floor(timer/5))mod 5 + 12
	if timer >= 5 * 5 - 1{
		instance_destroy()
	}
}
if timer mod 12 == 1 && not disabled{
	event_user(0)
}
// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
}
if global.is_paused{
	exit
}
if state_timer < 20{
	state_timer++
}
else{
	state = 1
	state_timer++
}
col = get_grid_position_from_world(x,y).col
if (col >= start_col + 4)&& shape != 2{
	disabled = true
}
if timer < 4{
	timer++
}

else{
	if state == 0{
		image_index = state_timer / 5
		x -= move_speed
	}
	else{
		image_index = 4+floor(state_timer / 5) mod 3
	}
	timer = 0
}
x += move_speed
if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}
if disabled{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}
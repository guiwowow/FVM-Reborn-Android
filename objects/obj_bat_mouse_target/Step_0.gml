// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
var target_y = get_world_position_from_grid(target_col,target_row).y - 30
if state == "appear"{
	image_angle -= 15
	y += 15
	if y >= target_y{
		state = "anim"
		image_angle = 0
		y = target_y
	}
}
if state == "anim"{
	timer++
	image_index = floor(timer/5) mod 6
	if timer >= 30{
		image_index = 5
		state = "idle"
	}
}

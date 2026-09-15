// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	image_speed = 0
	exit
}
else{
	image_speed = 1
}
if can_destroy{
	image_index = 8
	image_speed = 0
	timer--
	image_alpha = timer / 10
	if timer < 0 {
		instance_destroy()
	}
}

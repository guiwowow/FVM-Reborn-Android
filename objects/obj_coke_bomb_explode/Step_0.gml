// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if can_destroy{
	
		instance_destroy()
}
if global.is_paused{
	image_speed = 0
}
else{
	image_speed = 1
}
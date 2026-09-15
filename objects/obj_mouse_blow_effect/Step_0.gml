// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
x += 50
if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}
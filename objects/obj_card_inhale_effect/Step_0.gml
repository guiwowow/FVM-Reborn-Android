// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
timer++
x += x_move
y += y_move
if timer > 60{
	image_xscale -= 0.03
	image_yscale -= 0.03
	image_alpha -= 0.016
}
if timer >= 120{
	instance_destroy()
}
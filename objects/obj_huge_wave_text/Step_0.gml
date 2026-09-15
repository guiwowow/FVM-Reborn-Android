// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
if timer < 20{
	timer ++
	scale += 0.05
	image_alpha +=0.05
}
else if timer < 30{
	timer ++
	scale -= 0.02
	
}
else if timer > 90{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}
else {
	timer ++
}


image_xscale = 1.8 * scale
image_yscale = 1.8 * scale
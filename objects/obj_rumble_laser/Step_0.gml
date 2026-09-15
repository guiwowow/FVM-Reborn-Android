// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
timer++
if timer <= 6*3-1{
	image_index = floor(timer/3) mod 6
}
else{
	image_alpha-=0.1
	if image_alpha <=0{
		instance_destroy()
	}
}
// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
timer++
if timer < 8*3-1{
	image_index = floor(timer/3)
}
else if timer >= 8*3-1 && timer < (8*3+60){
	image_index = 8
}
else{
	image_index = floor((timer-60)/3)
	if timer >= (14*3+60){
		instance_destroy()
	}
}
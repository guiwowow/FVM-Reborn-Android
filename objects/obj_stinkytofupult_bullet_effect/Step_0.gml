// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
timer ++
image_index = (floor(timer/3) )mod 15
if timer > 180{
	disabled = true
	image_alpha = (190-timer)/10
	if timer > 190{
		instance_destroy()
	}
}
if timer mod 60 == 30 && not disabled{
	event_user(0)
}
// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}

timer ++
image_index = floor(timer/3) mod 10
if timer >= 29{
	instance_create_depth(x+30,y-150,-800,obj_angelababy_diamond)
	instance_destroy()
}
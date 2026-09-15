// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}
if global.debug{
	image_alpha = 0.5
}
var grid_pos = get_world_position_from_grid(col,row)
timer++

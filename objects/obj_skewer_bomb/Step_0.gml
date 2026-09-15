// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
if global.is_paused{
	exit
}
event_inherited()
if is_frozen{
	exit
}
// 动画计时器
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}
//检测自身附近是否有敌人
var has_enemy = false
with(obj_enemy_parent){
	if (grid_row == other.grid_row && abs(x-other.x) <= global.grid_cell_size_x && target_type=="air"){
		has_enemy = true
		break
	}
}
//攻击逻辑
if has_enemy{
	event_user(1)
}
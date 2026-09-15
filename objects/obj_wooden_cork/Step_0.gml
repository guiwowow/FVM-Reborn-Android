// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
if global.is_paused{
	exit
}

event_inherited(); 
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

attack_timer++

if attack_timer >= current_flash_speed * 40 - 1{
	with obj_mouse_hole{
		if grid_row == other.grid_row && grid_col == other.grid_col{
			instance_destroy()
		}
	}
	instance_destroy()
}
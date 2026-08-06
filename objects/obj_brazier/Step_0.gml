// 选卡缓时：每 12 帧推进一次（布局 60fps 渲染，逻辑 12 倍慢）
if (global.slowmo_active && global.game_frame != 0) exit;
if global.is_paused{
	exit
}
event_inherited(); 
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}



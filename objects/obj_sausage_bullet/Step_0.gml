// 选卡缓时：每 12 帧推进一次（布局 60fps 渲染，逻辑 12 倍慢）
if (global.slowmo_active && global.game_frame != 0) exit;
if global.is_paused{
	image_speed = 0
	exit
	
}
image_speed = 1
x += move_speed
if y > target_y{
	y -= 5
}
if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}
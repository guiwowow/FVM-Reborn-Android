// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
if global.is_paused {
    exit;
}
if burnt == 1{
	sprite_index = spr_fire_bullet
}
timer++;
image_index = (floor(timer / 3)) mod 4;

// 水平移动
x += move_speed;

// 边界检查
if x > 2200 or y > 1200 or x < 0 or y < 0 {
    instance_destroy();
}
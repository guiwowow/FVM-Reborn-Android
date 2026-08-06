// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
}
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
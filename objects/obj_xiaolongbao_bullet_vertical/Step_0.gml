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
if global.is_paused{
	image_speed = 0
	exit
	
}
image_speed = 1
if burnt == 1{
	sprite_index = spr_fire_bullet
}
y += move_speed
if x > 2200 or y > 1200 or x < 0 or y < -200{
	instance_destroy()
}
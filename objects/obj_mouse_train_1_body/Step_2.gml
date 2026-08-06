// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (global.slowmo_active) {
    if (!variable_instance_exists(id, "__slow_base_ispeed")) __slow_base_ispeed = image_speed;
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = __slow_base_ispeed;
} else if (variable_instance_exists(id, "__slow_base_ispeed")) {
    image_speed = __slow_base_ispeed;
}
// Inherit the parent event
event_inherited();

if !instance_exists(train_head){
	instance_destroy()
	exit
}
else{
	if train_head.hp <= 0{
		hp = 0
	}
	if hp < maxhp && train_head.hp > 0{
		train_head.hp -= (maxhp-hp)
		hp = maxhp
	}
}

frozen_timer = 0
stun_timer = 0
scare_timer = 0
y_move = 0
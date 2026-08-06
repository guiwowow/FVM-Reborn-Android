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
if global.is_paused{
	exit
}



if hp <= 0.33*max_hp{
	sprite_index = sprite_list[2]
}
else if hp <= 0.66*max_hp{
	sprite_index = sprite_list[1]
}
else{
	sprite_index = sprite_list[0]
}
event_inherited();

if is_frozen{
	exit
}

if frozen_timer > 0{
	exit
}

attack_timer++

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
if global.debug{
	cooldown=60
}
if cooldown_timer>0 {cooldown_timer--}
else{
	for(var i = 0 ; i < flame_amount;i++){
		var inst = instance_create_depth(950,-40,-1300,obj_flame)
		inst.mode = 0
		inst.value = flame_value
	}
	cooldown_timer = cooldown
}
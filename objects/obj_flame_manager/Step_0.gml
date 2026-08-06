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
	exit
}
if global.level_file.level_time_feature == "daytime"{
	if flame_natural_growth_cycle > 0{
		flame_natural_growth_timer ++
		if flame_natural_growth_timer >= flame_natural_growth_cycle{
			var inst = instance_create_depth(950,-40,-1300,obj_flame)
			inst.mode = 0
			flame_natural_growth_timer = 0
		}
	}
}
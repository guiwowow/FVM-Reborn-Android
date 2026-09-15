// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
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
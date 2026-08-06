if global.is_paused{
	exit
}
// 选卡缓时：每 12 帧才推进一次逻辑（阳光生成 12 倍慢）
if (global.slowmo_active && global.game_frame != 0) exit;
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
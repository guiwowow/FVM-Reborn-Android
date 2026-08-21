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
timer ++
if state == "idle"{
	image_index = (timer/5) mod 9
	if timer == 8*60{
		timer = 0
		state = "act"
	}
}
if state == "act"{
	image_index = (timer/5) mod 10 + 9
	if timer == 50{
		timer = 0
		state = "idle"
	}
}
for(var i = 0 ; i < array_length(enemy_list) ; i++){
	if !instance_exists(enemy_list[i]) || enemy_left_time[i] <= 0{
		array_delete(enemy_list,i,1)
		array_delete(enemy_left_time,i,1)
		continue
	}
	if enemy_list[i].hp > 0{
		enemy_list[i].x -= (8-enemy_list[i].move_speed)
		enemy_left_time[i] -= 1
	}
}
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

if type == 0 {
	pos_list = [
		{"row":0,col:8},
		{"row":1,col:7},
		{"row":2,col:6},
		{"row":3,col:5},
		{"row":4,col:4},
	]
}
else{
	pos_list = [
		{"row":6,col:8},
		{"row":5,col:7},
		{"row":4,col:6},
		{"row":3,col:5},
		{"row":2,col:4},
	]
}

if state == "appear"{
	image_index = floor(timer/5) mod 7
	if timer mod 5 == 1 && floor(timer/5) < array_length(pos_list){
		var erase_row = pos_list[floor(timer/5)].row
		var erase_col = pos_list[floor(timer/5)].col
		with obj_card_parent{
			if grid_col == erase_col && grid_row == erase_row && plant_id != "player" && plant_type != "coffee"{
				instance_destroy()
				if hp >= max_hp{
					obj_task_manager.card_loss++
				}
			}
		}
	}
	if timer >= 7 * 5 - 1{
		timer = 0
		state = "wait"
	}
}
if state == "wait"{
	image_index = 6
	if timer >= 60{
		timer = 0
		state = "disappear"
	}
}
if state == "disappear"{
	image_index = 6
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}
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
if global.is_paused{
	exit
}

var dis_list = []
with obj_oil_lamp{
	var dis = abs(grid_row - other.grid_row) + abs(grid_col - other.grid_col)
	if shape >= 1{
		array_push(dis_list,0)
	}
	else{
		array_push(dis_list,dis)
	}
}
with obj_brazier{
	var dis = abs(grid_row - other.grid_row) + abs(grid_col - other.grid_col)
	if dis == 0{
		array_push(dis_list,1)
	}
	else if dis == 1{
		array_push(dis_list,4)
	}
}


var min_dis = 10
for(var i = 0 ; i < array_length(dis_list) ; i++){
	if dis_list[i] < min_dis{
		min_dis = dis_list[i]
	}
}
if min_dis <= 2{
	light_level = 2
	target_type = "normal"
}
else if min_dis == 2{
	light_level = 1
	target_type = "normal"
}
else{
	light_level = 0
	target_type = "invisible"
}


if light_level > 0 && image_alpha < 1{
	image_alpha += 0.05
}

if light_level == 0 && image_alpha > 0.5{
	image_alpha -= 0.05
}

event_inherited();

if is_frozen || is_stun{
	exit
}

if state == ENEMY_STATE.ACTING{
	timer++

	var current_move_speed = move_speed
	if is_slowdown{
		current_move_speed = move_speed / 2
	}
	if hp > maxhp*hurt_rate{
		image_index = floor(timer/flash_speed) mod move_anim
	}
	else{
		image_index = floor(timer/flash_speed) mod move_anim + move_anim
	}
	x -= current_move_speed
}



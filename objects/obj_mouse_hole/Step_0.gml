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
timer++
if state == "appear"{
	image_index = floor(timer/5) mod 9
	if timer >= 9 * 5{
		state = "idle"
	}
}
if state == "idle"{
	image_index = 8
}

if timer mod 1800 == 0{
	var i = irandom_range(0,2)
	instance_create_depth(x,y+38,depth,enemy_list[i])
}

var grid_pos = get_grid_position_from_world(x,y)

grid_col = grid_pos.col
grid_row = grid_pos.row

if global.grid_terrains[grid_pos.row][grid_pos.col].type != "obstacle"{
	current_grid_type = global.grid_terrains[grid_pos.row][grid_pos.col].type
	global.grid_terrains[grid_pos.row][grid_pos.col].type = "obstacle"
}
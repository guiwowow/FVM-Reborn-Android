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
var grid_pos = get_grid_position_from_world(x,y)
timer++
if global.grid_terrains[grid_pos.row][grid_pos.col].type != "obstacle"{
	current_grid_type = global.grid_terrains[grid_pos.row][grid_pos.col].type
	global.grid_terrains[grid_pos.row][grid_pos.col].type = "obstacle"
}
if image_index < image_number - 1{
	image_index = floor(timer/5)
}
else{
	image_index = image_number - 1
}
if timer >= 30*60{
	if current_grid_type != ""{
		global.grid_terrains[grid_pos.row][grid_pos.col].type = current_grid_type
	}
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}

var base_depth = -10 - (grid_pos.row * 45) - (grid_pos.col * 5);
depth = base_depth - 4.5;
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
	image_speed = 0
	exit
	
}
image_speed = 1

var target_pos = get_world_position_from_grid(target_col,row)

if not pos_set{
	x = target_pos.x
	y = target_pos.y - room_height
	y += y_offset
	image_alpha = 1
	pos_set = 1
}

if y < target_pos.y{
	y += 20
}
else{
	instance_destroy()
}
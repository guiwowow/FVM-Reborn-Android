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

// Inherit the parent event
event_inherited();

if bomb_col[clamp(grid_col,0,8)] == 0{
	var bomb_pos = get_world_position_from_grid(grid_col+1,grid_row)
	var bomb_inst = instance_create_depth(bomb_pos.x,bomb_pos.y+10,0,obj_snail_mouse_mucus)
	bomb_inst.target_col = grid_col+1
	bomb_inst.target_row = grid_row
	bomb_col[clamp(grid_col,0,8)] = 1
}
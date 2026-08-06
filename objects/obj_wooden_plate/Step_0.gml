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
event_inherited();

if !is_derivative && shape == 2{
	//临时关闭替换放置，防止叠加
	var current_replace_option = global.replace_placement
	global.replace_placement = false
	if can_place_at_position(x,y-global.grid_cell_size_y,"lilypad","water","none"){
		var grid_pos = get_grid_position_from_world(x,y-global.grid_cell_size_y)
		var inst = instance_create_depth(x,y-global.grid_cell_size_y,depth+5,obj_wooden_plate)
		inst.is_derivative = true
		card_created(inst,grid_pos.col,grid_pos.row)
	}
	if can_place_at_position(x,y+global.grid_cell_size_y,"lilypad","water","none"){
		var grid_pos = get_grid_position_from_world(x,y+global.grid_cell_size_y)
		var inst = instance_create_depth(x,y+global.grid_cell_size_y,depth-5,obj_wooden_plate)
		inst.is_derivative = true
		card_created(inst,grid_pos.col,grid_pos.row)
	}
	global.replace_placement = current_replace_option
	is_derivative = true
}


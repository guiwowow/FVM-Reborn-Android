// Inherit the parent event
event_inherited();

if !is_derivative && shape == 2{
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
	is_derivative = true
}


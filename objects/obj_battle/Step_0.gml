if global.is_paused{
	exit
}
battle_time ++
// obj_controller STEP 事件
if keyboard_check_pressed(ord("W")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_normal_mouse)
	inst.is_slowdown = true
}

if keyboard_check_pressed(ord("E")){
	if global.screen_shake{
		Camera_Shock(5,20)
	}
}

if keyboard_check_pressed(ord("R")){
	var grid_pos = get_grid_position_from_world(mouse_x, mouse_y);
	if (grid_pos.col >= 0 && grid_pos.col < global.grid_cols && 
        grid_pos.row >= 0 && grid_pos.row < global.grid_rows) {
    
	    var new_plant = instance_create_depth(grid_pos.x, grid_pos.y, 0,obj_small_fire);
		var depth_value = calculate_plant_depth(grid_pos.col, grid_pos.row, new_plant.plant_type);
		card_created(new_plant, grid_pos.col, grid_pos.row);
		new_plant.depth = depth_value
		new_plant.flame_produce = 15000
		new_plant.is_slowdown = true
		instance_create_depth(grid_pos.x,grid_pos.y,-2,obj_place_effect)        
		audio_play_sound(snd_place1,0,0)
	}
}

if keyboard_check_pressed(ord("A")){
	var grid_pos = get_grid_position_from_world(mouse_x, mouse_y);
	if (grid_pos.col >= 0 && grid_pos.col < global.grid_cols && 
        grid_pos.row >= 0 && grid_pos.row < global.grid_rows) {
    
	    var new_plant = instance_create_depth(grid_pos.x, grid_pos.y, 0,obj_xiao_long_bao);
		var depth_value = calculate_plant_depth(grid_pos.col, grid_pos.row, new_plant.plant_type);
		card_created(new_plant, grid_pos.col, grid_pos.row);
		new_plant.depth = depth_value
		new_plant.is_slowdown = true
		new_plant.atk = 20
		instance_create_depth(grid_pos.x,grid_pos.y,-2,obj_place_effect)        
		audio_play_sound(snd_place1,0,0)
	}
}
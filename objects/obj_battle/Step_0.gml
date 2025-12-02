if global.is_paused{
	exit
}
battle_time ++
// obj_controller STEP 事件
if keyboard_check_pressed(ord("M")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_landlady_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
}
if keyboard_check_pressed(ord("N")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_duck_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
}
if keyboard_check_pressed(ord("L")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_assault_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
}
if keyboard_check_pressed(ord("K")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_roller_skating_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
}
if keyboard_check_pressed(ord("B")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_repairman_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
}
if keyboard_check_pressed(ord("J")){
	var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y+38,0,obj_butterfly_mouse)
	inst.grid_row = grid_pos.row
	inst.grid_col = grid_pos.col
	inst.frozen_timer = 0000
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
		new_plant.ice_timer = 600
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
		new_plant.atk = 90000
		instance_create_depth(grid_pos.x,grid_pos.y,-2,obj_place_effect)        
		audio_play_sound(snd_place1,0,0)
	}
}

if battle_time >=( global.level_file.first_wave_delay * 60 )&& level_stage == "ready"{
	current_total_hp = 0
	wave_timer = wave_max_time
	level_stage = "pre"
	audio_play_sound(snd_mouse_wave_attack,0,0)
	
	var subwave_enemy = global.level_file.waves[current_wave].subwaves
	enemy_list = subwave_enemy[current_subwave].enemy_list
	for(var i = 0; i < array_length(enemy_list);i++){
		if enemy_list[i].type != ""{
			var enemy_obj = global.enemy_map[? enemy_list[i].type]._obj
			var new_x = global.grid_offset_x + 9 * global.grid_cell_size_x
			var new_y = global.grid_offset_y + (enemy_list[i].row - 1) * global.grid_cell_size_y
			var grid_pos = get_grid_position_from_world(new_x,new_y)
			var new_enemy = instance_create_depth(grid_pos.x, grid_pos.y+38, 0,enemy_obj);
			current_total_hp += global.enemy_map[? enemy_list[i].type].hp
		}
	}
	current_subwave += 1
}
var current_total_subwaves = array_length(global.level_file.waves[current_wave].subwaves)
if wave_timer <= 0 && level_stage == "pre"{
	wave_timer = wave_max_time
	current_total_hp = 0
	var subwave_enemy = global.level_file.waves[current_wave].subwaves
	enemy_list = subwave_enemy[current_subwave].enemy_list
	for(var i = 0; i < array_length(enemy_list);i++){
		if enemy_list[i].type != ""{
			var enemy_obj = global.enemy_map[? enemy_list[i].type]._obj
			var new_x = global.grid_offset_x + 9 * global.grid_cell_size_x
			if enemy_list[i].row <= 0{
				enemy_list[i].row = irandom_range(1,global.grid_rows)
			}
			var new_y = global.grid_offset_y + (enemy_list[i].row - 1) * global.grid_cell_size_y
			var grid_pos = get_grid_position_from_world(new_x,new_y)
			var new_enemy = instance_create_depth(grid_pos.x, grid_pos.y+38, 0,enemy_obj);
			current_total_hp += global.enemy_map[? enemy_list[i].type].hp
		}
	}
	if current_subwave < current_total_subwaves-1{
		current_subwave+=1
	}
	else if current_wave == total_wave-1{
		global.is_paused = true
		global.game_over = true
		var inst = instance_create_depth(room_width/2,room_height/2,-3001,obj_game_over)
		inst.sprite_index = spr_win
		audio_play_sound(snd_win,0,0)
	}
	else if current_wave < total_wave{
		current_wave += 1
		current_subwave = 0
		audio_play_sound(snd_mouse_wave_attack,0,0)
		instance_create_depth(room_width/2,room_height/2,-300,obj_huge_wave_text)
	}
}


if keyboard_check_pressed(ord("Q")){
	if current_subwave < current_total_subwaves{
		current_subwave+=1
	}
	else if current_wave == total_wave-1{
		global.is_paused = true
		global.game_over = true
		var inst = instance_create_depth(room_width/2,room_height/2,-3001,obj_game_over)
		inst.sprite_index = spr_win
		audio_play_sound(snd_win,0,0)
	}
	else if current_wave < total_wave{
		current_wave += 1
		current_subwave = 0
	}
}
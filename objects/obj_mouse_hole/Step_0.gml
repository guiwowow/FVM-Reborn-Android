if global.is_paused{
	exit
}
if state == "appear"{
	timer++
	image_index = floor(timer/5) mod 9
	if timer >= 9 * 5{
		state = "idle"
	}
}
if state == "idle"{
	image_index = 8
}

var grid_pos = get_grid_position_from_world(x,y)

grid_col = grid_pos.col
grid_row = grid_pos.row

if global.grid_terrains[grid_pos.row][grid_pos.col].type != "obstacle"{
	current_grid_type = global.grid_terrains[grid_pos.row][grid_pos.col].type
	global.grid_terrains[grid_pos.row][grid_pos.col].type = "obstacle"
}
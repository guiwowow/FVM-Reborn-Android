for(var i = 0; i < array_length(scared_enemy);i++){
	with scared_enemy[i]{
		scare_timer = 30
		left_move_flashs = 30
		if grid_row == 0 {
			y_move = global.grid_cell_size_y/left_move_flashs
			grid_row += 1
		}
		else if grid_row == global.grid_rows - 1{
			y_move = -global.grid_cell_size_y/left_move_flashs
			grid_row -= 1
		}
		else{
			var im = irandom_range(1,100)
			if im > 50{
				y_move = global.grid_cell_size_y/left_move_flashs
				grid_row += 1
			}
			else{
				y_move = -global.grid_cell_size_y/left_move_flashs
				grid_row -= 1
			}
		}
	}
}
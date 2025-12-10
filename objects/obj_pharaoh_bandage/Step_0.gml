if global.is_paused{
	exit
}
var grid_pos = get_grid_position_from_world(x,y)
timer++
if image_index < image_number - 1{
	image_index = floor(timer/5)
}
else{
	image_index = image_number - 1
}
if timer >= 30*60{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}

var base_depth = -10 - (grid_pos.row * 45) - (grid_pos.col * 5);
depth = base_depth - 4.5;
if global.is_paused{
	image_speed = 0
	exit
}
else{
	image_speed = 1
}

var target_x = get_world_position_from_grid(target_col,row).x

if x > 2200 or y > 1200 or x < 0 or y < 0{
	instance_destroy()
}

x += move_speed
image_angle += 1
y -= cvspeed
cvspeed -= cgravity

if x >= target_x - 10 && x <= target_x + 10{
	var plant_list = ds_grid_get(global.grid_plants, target_col, row);
		for (var i = 0; i < ds_list_size(plant_list); i++) {
		var plant = ds_list_find_value(plant_list, i);
		if plant.plant_id != "player"{
			instance_destroy(plant)
		}
	}
	var inst_y = get_world_position_from_grid(target_col,row).y
	instance_create_depth(target_x,inst_y+15,-200,obj_arno_bullet_effect)
	instance_destroy()
}
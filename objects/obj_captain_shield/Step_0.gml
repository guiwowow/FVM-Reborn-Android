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
timer++
image_index = timer/5 mod 18

if state == "start"{
	x -= 8
	if x <= get_world_position_from_grid(0,0).x{
		state = "corner"
	}
}
if state == "corner"{
	y -= 8
	if y <= get_world_position_from_grid(0,0).y{
		state = "return"
	}
}
if state == "return"{
	x += 8
	if x >= (get_world_position_from_grid(7,0).x +50){
		instance_destroy()
	}
}

with obj_card_parent{
	if grid_col == other.target_col && grid_row == other.target_row &&
	plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
		if hp >= max_hp{
			obj_task_manager.card_loss++
		}
		instance_destroy()
	}
}

var grid_pos = get_grid_position_from_world(x,y)
target_col = grid_pos.col
target_row = grid_pos.row
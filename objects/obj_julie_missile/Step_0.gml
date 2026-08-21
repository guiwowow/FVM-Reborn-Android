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
var target_pos = get_world_position_from_grid(target_col,target_row)
y += 5
if y >= target_pos.y{
	with obj_card_parent{
		if (abs(grid_col - other.target_col) <= 2 && grid_row == other.target_row) &&plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
			instance_destroy()
		}
	}
	var effect = instance_create_depth(x-15,y+15,-200,obj_wine_bottle_bomb_explode)
	effect.interval = 3
	effect.sprite_index = spr_julie_incendiary_bomb_effect
	effect.max_time = 45
	effect.is_parent = true
	effect.row = target_row
	effect.col = target_col
	instance_destroy()
}
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
var target_x = get_world_position_from_grid(target_col,target_row).x

if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}

x += move_speed
y -= cvspeed

if x >= target_x - 10 && x <= target_x + 10{
	with obj_card_parent{
		if grid_col - other.target_col <= 1 && grid_row - other.target_row >= -1 &&
		grid_col >= other.target_col && grid_row <= other.target_row &&
		plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
			instance_destroy()
		}
	}
	var inst = instance_create_depth(x+50,y-65,-800,obj_coke_bomb_explode)
	inst.sprite_index = spr_spider_man_mouse_web_effect
	instance_destroy()
	
}
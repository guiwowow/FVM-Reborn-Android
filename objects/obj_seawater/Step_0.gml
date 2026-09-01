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
if global.debug{
	image_alpha = 0.5
}
var grid_pos = get_world_position_from_grid(col,row)
timer++


has_bubble = false
non_undersea_card = false
with obj_card_parent{
	var is_in_front = false
	is_in_front = grid_row == other.row && grid_col == other.col
	if is_in_front{
		if plant_id == "soda_bubble"{
			on_lava = true
			other.has_bubble = true
		}
	}
}

with obj_card_parent{
	var is_in_front = false
	is_in_front = grid_row == other.row && grid_col == other.col
	if is_in_front{
		if (plant_type != "coffee" && !invincible && array_get_index(other.ignore_list,plant_id) == -1 && !(plant_id == "player" && hp <= 0.05*max_hp)){
			other.non_undersea_card = true
			if !other.has_bubble && other.timer mod 60 == 0{ 
				hp -= 0.05*max_hp
				event_user(2)
			}
		}
	}
}


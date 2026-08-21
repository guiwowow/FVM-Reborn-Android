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
grid_pos = get_grid_position_from_world(x,y)
if timer < max_time timer++
else can_destroy = true
if timer mod 3 == 0 && not can_destroy{
	if timer <= 20{
		image_index = floor(timer/5) mod 4
	}
	else{
		image_index = floor(timer/5) mod 7 + 3
	}
	with obj_enemy_parent{
		if (grid_col == other.grid_pos.col && grid_row == other.grid_pos.row && can_hit(other.target_type,target_type)){
			if hp > other.damage{
				hp -= other.damage
				event_user(0)
			}
			else{
				if special_ash{
					var inst = instance_create_depth(x,y-20,depth,obj_mouse_ash_death)
					inst.special_ash = true
					inst.sprite_index = sprite_index
					inst.image_index = image_index
				}
				else{
					instance_create_depth(x,y-20,depth,obj_mouse_ash_death)
				}
				instance_destroy()
			}
		}
	}
}
if can_destroy{
	image_index = floor(timer/5) mod 3 + 10
	timer ++
	if timer >= max_time + 15{
		instance_destroy()
	}
}
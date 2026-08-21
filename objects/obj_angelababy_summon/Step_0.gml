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

timer ++
image_index = floor(timer/5) mod 22
if timer >= 22*5-1{
	instance_destroy()
}
if timer == 13*5-1{
	if global.grid_terrains[grid_row][grid_col].type == "water"{
		var inst = instance_create_depth(x,y+20,depth+1,obj_egg_tropical_fish_mouse)
		inst.hp = 1320
		inst.maxhp = 1320
	}
	else{
		var inst = instance_create_depth(x,y+20,depth+1,obj_machine_iron_pan_mouse)
	}
	with obj_card_parent{
		if grid_col == other.grid_col && grid_row == other.grid_row &&
		plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
			instance_destroy()
		}
	}
}
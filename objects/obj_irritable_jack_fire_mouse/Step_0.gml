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
// Inherit the parent event
if global.is_paused{
	exit
}

if hp <=0 && state != ENEMY_STATE.DEAD{
	state = ENEMY_STATE.DEAD
	timer = 0
}

if state == ENEMY_STATE.DEAD{
	image_alpha -= 0.1
	if image_alpha <= 0{
		instance_destroy()
	}
}

if state == ENEMY_STATE.ATTACK && hp > 0{
	timer = 0
	state = ENEMY_STATE.ACTING
}

event_inherited();

if state == ENEMY_STATE.ACTING && hp > 0 && state != ENEMY_STATE.DEAD{
	if instance_exists(target_plant){
		with target_plant{
			if plant_id != "player"{
				if !invincible && plant_id != "cotton_candy"{
					hp -= 2000
					event_user(2)
				}
			}
			else{
				hp = 10
				event_user(2)
			}
			var effect = instance_create_depth(x-15,y+15,-800,obj_wine_bottle_bomb_explode)
			effect.interval = 0
			effect.sprite_index = spr_julie_incendiary_bomb_effect
			effect.max_time = 45
			effect.is_parent = true
			effect.row = grid_row
			effect.col = grid_col
		}
	}
	instance_destroy()
}


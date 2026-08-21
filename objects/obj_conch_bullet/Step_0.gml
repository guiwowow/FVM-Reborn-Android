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

if state == "appear"{
	image_index = floor(timer/5) mod 12
	if timer >= 12 * 5 - 1{
		timer = 0
		state = "attack"
	}
}
if state == "attack"{
	x += move_speed
	with obj_card_parent{
		if abs(x-other.x) <= 50 && grid_row == other.grid_row{
			if plant_id != "cotton_candy" && plant_type != "coffee" && plant_id != "soda_bubble"{
				var inst = instance_create_depth(other.x,other.y,other.depth,obj_coke_bomb_explode)
				inst.sprite_index = spr_conch_mouse_bullet_effect
				instance_destroy(other)
			}
			if plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"  && plant_id != "soda_bubble"{
				hp -= 20
				event_user(2)
			}
		}
	}
}

if x < -200 || x > 2200 || y < -200 || y > 1200{
	instance_destroy()
}
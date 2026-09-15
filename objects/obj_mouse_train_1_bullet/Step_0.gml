// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;

if global.is_paused{
	exit
}

x -= 8
with obj_card_parent{
	if abs(x-other.x) <= 50 && grid_row == other.grid_row{
		var inst = instance_create_depth(x,y-35,-800,obj_arno_bullet_effect)
		inst.sprite_index = spr_mouse_train_1_bullet_effect
		instance_destroy(other)
		if plant_id != "player" && plant_type != "coffee" && !invincible && plant_id != "cotton_candy"{
			if hp >= max_hp{
				obj_task_manager.card_loss++
			}
			instance_destroy()
		}
	}
}
if x < -200{
	instance_destroy()
}
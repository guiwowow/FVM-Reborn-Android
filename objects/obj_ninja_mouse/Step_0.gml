// Inherit the parent event
if dash{
	move_speed = 1.2
	sprite_index = spr_ninja_mouse_summon
	move_anim = 6
	if hp <= 0{
		move_anim = 12
		dash = false
	}
}
else{
	if state == ENEMY_STATE.ACTING{
		sprite_index = spr_ninja_mouse_summon
	}
	else{
		sprite_index = spr_ninja_mouse
	}
}
event_inherited();
if global.is_paused or is_frozen{
	exit
}
if dash && (state == ENEMY_STATE.ATTACK or timer > 4.5*60){
	move_speed = 0.27
	move_anim = 12
	dash = false
	timer = 0
	state = ENEMY_STATE.ACTING
	
	if target_plant != noone{
		with (target_plant) {
			if !invincible{
				hp -= 10;
			}
	        event_user(2)
	        // 播放受击效果

	        //播放音效
			var a = irandom_range(0,2)
			audio_play_sound(ds_list_find_value(obj_battle.chomp_sound_list,a),0,0)
		}
	}
}
if state == ENEMY_STATE.ACTING{
	if hp > maxhp * hurt_rate{
		image_index = floor(timer/flash_speed) mod 16 + 12
	}
	else{
		image_index = floor(timer/flash_speed) mod 16 + 27
	}
	if timer >= flash_speed * 16 or hp <= 0{
		if hp > 0{
			
			instance_create_depth(x-100,y,depth,obj_minion_mouse)
			instance_create_depth(x+100,y,depth,obj_minion_mouse)
			if grid_row > 0{
				instance_create_depth(x,y-global.grid_cell_size_y,depth,obj_minion_mouse)
			}
			if grid_row < global.grid_rows - 1{
				instance_create_depth(x,y+global.grid_cell_size_y,depth,obj_minion_mouse)
			}
			
		}
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_ninja_mouse
	}
}
// Inherit the parent event
if hp <= 0  && state != ENEMY_STATE.DEAD{
		timer = 0
		state = ENEMY_STATE.DEAD
		if (grid_col < 0 || grid_col >= global.grid_cols || grid_row < 0 || grid_row >= global.grid_rows){
			sprite_index = spr_diver_mouse_land
		}
		else{
			if global.grid_terrains[grid_row][grid_col].type == "water"{
				sprite_index = spr_diver_mouse
			}
			else{
				sprite_index = spr_diver_mouse_land
			}
		}
		
	}
if (grid_col < 0 || grid_col >= global.grid_cols || grid_row < 0 || grid_row >= global.grid_rows) {
	sprite_index = spr_diver_mouse_land
	move_anim = 8
	death_anim = 13
}
else{
	if global.grid_terrains[grid_row][grid_col].type == "water"{
		if sprite_index == spr_diver_mouse_land{
			state = ENEMY_STATE.ACTING
			sprite_index = spr_diver_mouse_enter
			timer = 0
			audio_play_sound(snd_enter_water,0,0)
			reversed = false
		}
		move_anim = 4
		death_anim = 10
	}
	else{
		if sprite_index == spr_diver_mouse{
			state = ENEMY_STATE.ACTING
			sprite_index = spr_diver_mouse_enter
			timer = 0
			audio_play_sound(snd_enter_water,0,0)
			reversed = true
		}
		move_anim = 8
		death_anim = 13
	}
}

event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ACTING{
	if hp <= 0{
		timer = 0
		state = ENEMY_STATE.DEAD
		if reversed{
			sprite_index = spr_diver_mouse_land
		}
		else{
			sprite_index = spr_diver_mouse
		}
		
	}
	x -= move_speed
	if hp > maxhp * hurt_rate{
		if reversed{
			image_index = 9 - (floor(timer/flash_speed) mod 9)
		}
		else{
			image_index = floor(timer/flash_speed) mod 9
		}
	}
	else{
		if reversed{
			image_index = 9 - (floor(timer/flash_speed) mod 9) + 8
		}
		else{
			image_index = (floor(timer/flash_speed) mod 9) + 8
		}
	}
	if timer >= flash_speed * 9 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		if reversed{
			sprite_index = spr_diver_mouse_land
		}
		else{
			sprite_index = spr_diver_mouse
		}
		if hp <= 0{
			timer = 0
			state = ENEMY_STATE.DEAD
		}
	}
}
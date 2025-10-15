// Inherit the parent event
if shield_hp > 0{
	attack_anim = 6
}
else{
	attack_anim = 4
}
if (grid_col < 0 || grid_col >= global.grid_cols || grid_row < 0 || grid_row >= global.grid_rows) {
	if shield_hp > 0{
		sprite_index = spr_butterfly_mouse_land_shield
	}
	else{
		sprite_index = spr_butterfly_mouse_land
	}
	death_anim = 12
}
else{
	if global.grid_terrains[grid_row][grid_col].type == "water"{
		if sprite_index == spr_butterfly_mouse_land or sprite_index == spr_butterfly_mouse_land_shield{
			state = ENEMY_STATE.ACTING
			sprite_index = spr_butterfly_mouse_enter
			timer = 0
			audio_play_sound(snd_enter_water,0,0)
			reversed = false
		}
		
		death_anim = 10
	}
	else{
		if sprite_index == spr_butterfly_mouse or sprite_index == spr_butterfly_mouse_shield{
			state = ENEMY_STATE.ACTING
			sprite_index = spr_butterfly_mouse_enter
			timer = 0
			audio_play_sound(snd_enter_water,0,0)
			reversed = true
		}
		
		death_anim = 12
	}
	if shield_hp > 0 && state != ENEMY_STATE.ACTING{
		//attack_anim = 6
		if global.grid_terrains[grid_row][grid_col].type == "water"{
			sprite_index = spr_butterfly_mouse_shield
			death_anim = 10
		}
		else{
			sprite_index = spr_butterfly_mouse_land_shield
			death_anim = 12
		}
	}
	else  if shield_hp <= 0 && state != ENEMY_STATE.ACTING{
		//attack_anim = 4
		if global.grid_terrains[grid_row][grid_col].type == "water"{
			sprite_index = spr_butterfly_mouse
			death_anim = 10
		}
		else{
			sprite_index = spr_butterfly_mouse_land
			death_anim = 12
		}
	}
}

event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ACTING{
	if shield_hp > 0{
				sprite_index = spr_butterfly_mouse_enter_shield
			}
			else{
				sprite_index = spr_butterfly_mouse_enter
			}
	x -= move_speed
	if hp > maxhp * hurt_rate && shield_hp > 0{
		if reversed{
			image_index = 8 - (floor(timer/flash_speed) mod 8)
		}
		else{
			image_index = floor(timer/flash_speed) mod 8
		}
	}
	else{
		if reversed{
			image_index = 8 - (floor(timer/flash_speed) mod 8) + 7
		}
		else{
			image_index = (floor(timer/flash_speed) mod 8) + 7
		}
	}
	if timer >= flash_speed * 8 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		if reversed{
			if shield_hp > 0{
				sprite_index = spr_butterfly_mouse_land_shield
			}
			else{
				sprite_index = spr_butterfly_mouse_land
			}
		}
		else{
			if shield_hp > 0{
				sprite_index = spr_butterfly_mouse_shield
			}
			else{
				sprite_index = spr_butterfly_mouse
			}
		}
	}
}

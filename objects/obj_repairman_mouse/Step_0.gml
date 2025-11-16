// Inherit the parent event

if shield_hp > 0 && state != ENEMY_STATE.ACTING{
	sprite_index = spr_repairman_mouse_shield
	move_anim = 8
	attack_anim = 5
	move_speed = 0.6
}
else if shield_hp <= 0 && state != ENEMY_STATE.ACTING{
	sprite_index = spr_repairman_mouse
	move_anim = 8
	attack_anim = 4
	move_speed = 0.3
}
event_inherited();
if global.is_paused or is_frozen{
	exit
}
if state == ENEMY_STATE.ATTACK && (array_get_index(can_place_list,target_plant.plant_id) != -1) && !placed && shield_hp > 0{
	sprite_index = spr_repairman_mouse_place
	timer = 0
	state = ENEMY_STATE.ACTING
}
if not placed && state = ENEMY_STATE.ACTING{
	if hp <= 0{
		timer = 0
		state = ENEMY_STATE.DEAD
		sprite_index = spr_repairman_mouse
	}
	if shield_hp <= 0{
		timer = 0
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_repairman_mouse
	}
	if hp > maxhp * hurt_rate{
		if shield_hp > shield_max_hp * hurt_rate{
			image_index = floor(timer/flash_speed) mod 6
		}
		else{
			image_index = floor(timer/flash_speed) mod 6 + 5
		}
	}
	else{
		if shield_hp > shield_max_hp * hurt_rate{
			image_index = floor(timer/flash_speed) mod 6 + 11
		}
		else{
			image_index = floor(timer/flash_speed) mod 6 + 17
		}
	}
	if timer >= flash_speed * 6 or hp <= 0{
		sprite_index = spr_repairman_mouse
		state = ENEMY_STATE.NORMAL
		shield_hp = 0
		placed = true
	}
}
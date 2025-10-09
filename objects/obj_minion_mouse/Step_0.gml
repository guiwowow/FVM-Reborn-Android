// Inherit the parent event
if not summon{
	state = ENEMY_STATE.ACTING
	if hp <= 0{
		summon = true
		state = ENEMY_STATE.NORMAL
	}
}

	if state == ENEMY_STATE.ACTING{
		sprite_index = spr_minion_mouse_summon
	}
	else{
		sprite_index = spr_minion_mouse
	}

event_inherited();
if state == ENEMY_STATE.ACTING{
	
	image_index = floor(timer/flash_speed) mod 10 
	
	if timer >= flash_speed * 10 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		sprite_index = spr_ninja_mouse
		summon = true
	}
}
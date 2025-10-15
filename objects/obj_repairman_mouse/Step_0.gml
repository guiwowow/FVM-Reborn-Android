// Inherit the parent event

if shield_hp > 0{
	sprite_index = spr_repairman_mouse_shield
	move_anim = 8
	attack_anim = 5
	move_speed = 0.6
}
else{
	sprite_index = spr_repairman_mouse
	move_anim = 8
	attack_anim = 4
	move_speed = 0.3
}
event_inherited();
if global.is_paused or is_frozen{
	exit
}
if not placed && state = ENEMY_STATE.ACTING{
	if hp > maxhp * hurt_rate{
		image_index = floor(timer/flash_speed) mod 10
	}
	else{
		image_index = floor(timer/flash_speed) mod 10 + 9
	}
	if timer >= flash_speed * 10 or hp <= 0{
		state = ENEMY_STATE.NORMAL
		shield_hp = 0
	}
}
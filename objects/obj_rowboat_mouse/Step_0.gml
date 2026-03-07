if global.is_paused{
	exit
}

// Inherit the parent event
event_inherited();

if state == ENEMY_STATE.APPEAR{
	
	var target_pos = get_world_position_from_grid(7,grid_row)
	if x != target_pos.x+10{
		x = target_pos.x+10
	}
	if hp <= 0{
		timer = 0
		sprite_index = spr_rowboat_mouse
		state = ENEMY_STATE.DEAD
	}
	appear_timer++
	image_index = floor(appear_timer/5) mod 16
	if appear_timer >= 16*5-1{
		timer = 0
		sprite_index = spr_rowboat_mouse
		state = ENEMY_STATE.NORMAL
	}
	image_alpha = 1
}
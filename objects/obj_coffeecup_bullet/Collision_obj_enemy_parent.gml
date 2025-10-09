
if other.hp > 0 and row == other.grid_row and not disabled{
	with(other){
		audio_play_sound(hit_sound,0,0)
		damage_amount = other.damage
		damage_type = other.damage_type
		event_user(0)
	
	}
	instance_create_depth(x,y,depth,obj_coffeecup_bullet_effect)
	instance_destroy()
}
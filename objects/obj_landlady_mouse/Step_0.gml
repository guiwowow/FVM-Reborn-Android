// Inherit the parent event

if shield_hp > 0{
	sprite_index = spr_landlady_mouse_shield
	attack_anim = 6
}
else{
	sprite_index = spr_landlady_mouse
	attack_anim = 4
}

event_inherited();
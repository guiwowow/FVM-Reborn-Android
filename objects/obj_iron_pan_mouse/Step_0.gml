// Inherit the parent event

if hp > maxhp - helmet_hp{
	sprite_index = spr_iron_pan_mouse_helmet
	hit_sound = snd_hit3
}
else{
	sprite_index = spr_iron_pan_mouse
	hit_sound = snd_hit1
}
event_inherited();
damage_amount = 0
damage_type = ""

if not hp_modified{
	if global.difficulty == 0{
		maxhp *= 0.8
		hp *= 0.8
		helmet_hp *= 0.8
		helmet_max_hp *= 0.8
		shield_hp *= 0.8
		shield_max_hp *= 0.8
	}
	if global.difficulty >= 3{
		maxhp *= 2
		hp *= 2
		helmet_hp *= 2
		helmet_max_hp *= 2
		shield_hp *= 2
		shield_max_hp *= 2
	}
	
	hp_modified = true
}
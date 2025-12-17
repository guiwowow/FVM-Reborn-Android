damage_amount = 0
damage_type = ""

if not hp_modified{
	if global.difficulty == 0{
		maxhp *= 0.8
		hp *= 0.8
		shield_hp *= 0.8
		shield_max_hp *= 0.8
	}
	
	hp_modified = true
}
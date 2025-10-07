current_wave_hp = 0
with obj_enemy_parent{
	
	other.current_wave_hp += hp
}
if current_wave_hp <= hp_ratio * current_total_hp{
	if wave_timer < wave_max_time - wave_min_time{
		wave_timer = 0
	}
}
if not global.is_paused{
	wave_timer --
}
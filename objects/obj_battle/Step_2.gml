current_wave_hp = 0
with obj_enemy_parent{
	
	other.current_wave_hp += hp
}
if current_wave_hp <= hp_ratio * current_total_hp{
	if wave_timer > wave_min_time{
		wave_timer = wave_min_time
	}
}
wave_timer --
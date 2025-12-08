if global.is_paused{
	exit
}


if obj_battle.current_wave >= elite_wave && obj_battle.wave_timer <= 1{
	level_stage = "elite"
	if obj_battle_music_controller.battle_music != global.level_data.elite_music && obj_battle.level_stage != "boss"{
		with obj_battle_music_controller{
			new_battle_music = global.level_data.elite_music
			event_user(0)
		}
	}
}
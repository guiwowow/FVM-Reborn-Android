with obj_battle{
	if  current_wave == total_wave-1 {
		global.is_paused = true
		global.game_over = true
		var inst = instance_create_depth(room_width/2,room_height/2,-3001,obj_game_over)
		inst.sprite_index = spr_win
		audio_play_sound(snd_win,0,0)
	}
	else{
		level_stage = "pre"
	}
}
instance_destroy(hpbar_inst)
with obj_enemy_parent{
		if place_meeting(x,y,other) && hp > 0{
			hp -= other.atk
			event_user(0)
			audio_play_sound(snd_hit1,0,0)
		}
	}
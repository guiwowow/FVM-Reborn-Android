
	var damage_amount = damage 
	if (other.state == ENEMY_STATE.NORMAL or other.state == ENEMY_STATE.ATTACK)and target_enemy == other.id{
		with(other){
			
			audio_play_sound(snd_hit1,0,0)
			
			hp -= damage_amount
			event_user(0)
	
		}

			instance_create_depth(x,y,depth,obj_takoyaki_bullet_effect)
		
		instance_destroy()
	}

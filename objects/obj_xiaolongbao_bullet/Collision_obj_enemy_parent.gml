
	var damage_amount = damage 
	if (other.state == ENEMY_STATE.NORMAL or other.state == ENEMY_STATE.ATTACK)and row == other.grid_row{
		with(other){
			if other.burnt == 1{
				audio_play_sound(snd_fire_hit,0,0)
			}
			else{
				audio_play_sound(snd_hit1,0,0)
			}
			hp -= damage_amount
			event_user(0)
	
		}
		if burnt == 0{
			instance_create_depth(x,y,depth,obj_xiaolongbao_bullet_effect)
		}
		else{
			var inst = instance_create_depth(x+25,y,depth,obj_fire_bullet_effect)
			inst.sprite_index = spr_fire_bullet_effect
		}
		instance_destroy()
	}

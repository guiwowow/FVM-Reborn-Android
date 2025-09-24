if ds_list_find_index(hitted_enemy,other.id) == -1{
	var damage_amount = damage 
	if (other.state == ENEMY_STATE.NORMAL or other.state == ENEMY_STATE.ATTACK)and row == other.grid_row{
		with(other){
			audio_play_sound(snd_hit1,0,0)
			hp -= damage_amount
			event_user(0)
	
		}
		ds_list_add(hitted_enemy,other.id)
		//instance_create_depth(x,y,depth,obj_xiaolongbao_bullet_effect)
		//instance_destroy()
	}
}
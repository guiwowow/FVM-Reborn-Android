var damage_amount = damage 
if other.state == ENEMY_STATE.NORMAL or other.state == ENEMY_STATE.ATTACK{
	with(other){
		audio_play_sound(snd_hit1,0,0)
		hp -= damage_amount
		event_user(0)
	
	}
	instance_create_depth(x,y,depth,obj_xiaolongbao_bullet_effect)
	instance_destroy()
}
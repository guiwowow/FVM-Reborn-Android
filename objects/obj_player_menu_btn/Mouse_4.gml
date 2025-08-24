audio_play_sound(snd_button,0,0)
if target_screen == "quit"{
	if room == room_map{
		room_goto(room_menu)
	}
	else{
		if not instance_exists(obj_quit_confirm){
			instance_create_depth(0,0,-20,obj_quit_confirm)
		}
	}
}

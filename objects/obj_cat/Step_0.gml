if global.is_paused{
	exit
}
if timer < flash_speed - 1 {
    timer++;
} else {
    switch (state) {
        case "idle":
            if image_index < idle_anim image_index++;
            else image_index = 0;
            break;
            
        case "awake":
            if (image_index >= (idle_anim+1) && image_index < (idle_anim+1) + awake_anim) image_index++;
            else image_index = (idle_anim+1);
            break;
		case "attack":
            if (image_index >= ((idle_anim+2) + awake_anim) && image_index < (idle_anim+2) + awake_anim+attack_anim) image_index++;
            else image_index = ((idle_anim+2) + awake_anim);
            break;
		
    }
    timer = 0;
}
if state == "awake"{
	attack_timer ++
	if attack_timer > flash_speed * 3{
		state = "attack"
		flash_speed = 4
	}
}
if state == "attack"{
	x += 4
	if x > 2200{
		instance_destroy()
	}
}
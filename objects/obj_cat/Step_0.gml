if global.is_paused{
	exit
}
timer ++
switch (state) {
    case "idle":
        image_index = floor(timer / flash_speed) mod idle_anim
        break;
            
    case "awake":
        image_index = floor(timer / flash_speed) mod awake_anim + idle_anim
        break;
	case "attack":
        image_index = floor(timer / flash_speed) mod attack_anim + awake_anim + idle_anim
        break;
		
}

if state == "awake"{
	attack_timer ++
	if attack_timer > flash_speed * awake_anim{
		state = "attack"
		flash_speed = 4
		timer = 0
	}
}
if state == "attack"{
	x += 4
	if x > 2200{
		instance_destroy()
	}
}
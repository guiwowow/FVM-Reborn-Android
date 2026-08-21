// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (global.slowmo_active) {
    if (!variable_instance_exists(id, "__slow_base_ispeed")) __slow_base_ispeed = image_speed;
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = __slow_base_ispeed;
} else if (variable_instance_exists(id, "__slow_base_ispeed")) {
    image_speed = __slow_base_ispeed;
}

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

with obj_enemy_parent{
	if abs(x - other.x) <= 120{
		if other.state == "idle" && other.row == grid_row && hp > 0 && (array_get_index(other.ignore_list,mouse_id) == -1)&& (array_get_index(other.target_ignore,mouse_id) == -1){
			other.state = "awake"
			other.timer = 0
		}
		if other.state != "idle" && other.row == grid_row && hp > 0  && (array_get_index(other.ignore_list,mouse_id) == -1){
			
			var inst = instance_create_depth(x,y,depth,obj_knock_back_effect)
			inst.sprite_index = sprite_index
			inst.image_index = image_index
			instance_destroy()
			
		}
	}
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
	x += move_speed
	if x > 2200 || x < -200{
		instance_destroy()
	}
}
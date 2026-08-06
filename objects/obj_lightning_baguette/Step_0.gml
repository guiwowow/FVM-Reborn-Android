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

var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}

event_inherited();

if is_frozen{
	exit
}

if frozen_timer > 0{
	exit
}

with obj_card_parent{
	if grid_row >= other.grid_row && grid_col == other.grid_col && plant_id == "lightning_baguette" && !is_parent &&other.id != id{
		other.is_parent = true
		other.banding_bread = id
	}
}

if !instance_exists(banding_bread){
	is_parent = false
	banding_bread = noone
}
else{
	if is_parent{
		banding_bread.attack_timer = attack_timer
	}
}


if is_parent{

	if (attack_timer <= cycle - attack_anim * current_flash_speed) {
	    attack_timer++;
	}  else if (attack_timer == cycle - 20) {
	    event_user(1); // 发射子弹
		attack_timer++;
	}else if (attack_timer <= cycle) {
	    attack_timer++;
	    state = CARD_STATE.ATTACK;
	}else {
	    if shape == 2{
			event_user(1); // 发射子弹
		}
	    attack_timer = 0;
	    state = CARD_STATE.IDLE;
	}
}
else{
	if (attack_timer <= cycle - attack_anim * current_flash_speed) {
	    //attack_timer++;
	}  else if (attack_timer == cycle - 5) {
	    //event_user(1); // 发射子弹
		//attack_timer++;
	}else if (attack_timer <= cycle) {
	    //attack_timer++;
	    state = CARD_STATE.ATTACK;
	}else {
	    //if shape == 2{
		//	event_user(1); // 发射子弹
		//}
	    //attack_timer = 0;
	    state = CARD_STATE.IDLE;
	}
}
// Inherit the parent event
event_inherited();
//检测自身右方是否有敌人
var has_enemy = false
with(obj_normal_mouse){
	if (grid_row == other.grid_row && grid_col >= other.grid_col-1 && grid_col <= (other.grid_col + 1) && health > 0){
		has_enemy = true
		break
	}
}
//攻击逻辑
if (has_enemy) {
	state = CARD_STATE.ATTACK;
	if attack_timer <=20{
		attack_timer ++
		banding_star_obj.x = self.x
		banding_star_obj.y = self.y-5
	}
	else{
		
		event_user(1)
		attack_timer = -9999999
	}	
} else {
    // 没有符合条件的敌人，重置状态
    //attack_timer = 0;
    //state = CARD_STATE.IDLE;
}
if state == CARD_STATE.IDLE{
	flash_speed = 6
}
else{
	flash_speed = 4
}




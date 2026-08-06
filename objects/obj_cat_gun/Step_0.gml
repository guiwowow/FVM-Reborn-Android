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
// obj_plant_parent 的 Step 事件
if global.is_paused{
	exit
}
// 动画计时器

	if timer < flash_speed - 1 {
	    timer++;
	} else {
	    switch (state) {
	        case CARD_STATE.IDLE:
	            if image_index < 7 image_index++;
	            else image_index = 0;
	            break;
            
	        case CARD_STATE.ATTACK:
	            if (image_index >= (7+1) && image_index <= (7+1) + attack_anim) image_index++;
	            else image_index = (7+1);
	            break;
		
	    }
	    timer = 0;
	}



// 计算深度值
//var depth_value = -((y + depth_offset) * 10 + x);
//depth = depth_value - depth_group * 100;
depth = parent_player.depth-1

//检测自身右方是否有敌人
var has_enemy = false
with(obj_enemy_parent){
	if (grid_row == other.grid_row && grid_col >= other.grid_col && grid_col <= (global.grid_cols + 1) && health > 0){
		has_enemy = true
		break
	}
}
//攻击逻辑
if (has_enemy) {
    if (attack_timer <= cycle - attack_anim * flash_speed) {
        attack_timer++;
    } else if (attack_timer <= cycle) {
        attack_timer++;
        state = CARD_STATE.ATTACK;
    } else {
        event_user(1); // 发射子弹
        attack_timer = 0;
        state = CARD_STATE.IDLE;
    }
} else {
    // 没有符合条件的敌人，重置状态
    attack_timer = 0;
    state = CARD_STATE.IDLE;
}
// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
}
if global.is_paused{
	exit
}
event_inherited(); 
if is_frozen || state == CARD_STATE.SLEEP{
	exit
}
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}
//检测自身右方是否有敌人
var has_enemy = false
with(obj_enemy_parent){
	if (grid_row >= other.grid_row-1&&grid_row <= other.grid_row+1 && grid_col >= other.grid_col && grid_col <= (global.grid_cols + 1) && can_target_on(other.target_type,target_type)){
		has_enemy = true
		break
	}
}
//攻击逻辑
if (has_enemy) {
    if (attack_timer <= cycle - attack_anim * current_flash_speed) {
        attack_timer++;
    } else if (attack_timer <= cycle) {
        attack_timer++;
        state = CARD_STATE.ATTACK;
    } else {
        //event_user(1); // 发射子弹
        attack_timer = 0;
        state = CARD_STATE.IDLE;
    }
	if (attack_timer == cycle - 3*flash_speed){
		event_user(1);
	}
	if shape >= 2 && (attack_timer == cycle - 1*flash_speed){
		event_user(1)
	}
} else {
    // 没有符合条件的敌人，重置状态
    attack_timer = 0;
    state = CARD_STATE.IDLE;
}



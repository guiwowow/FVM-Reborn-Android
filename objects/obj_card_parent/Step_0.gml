// obj_plant_parent 的 Step 事件
if global.is_paused{
	exit
}
// 动画计时器
var current_flash_speed = flash_speed
if is_slowdown{
	current_flash_speed *= 2
}
var upgrade_data = get_plant_data_with_skill(plant_id, shape,current_level,skill);
    if is_slowdown {
        cycle = upgrade_data[? "cycle"] * 2;    
    }
	else{
		cycle = upgrade_data[? "cycle"]
	}
if timer < current_flash_speed - 1 {
    timer++;
} else {
    switch (state) {
        case CARD_STATE.IDLE:
            if image_index < idle_anim image_index++;
            else image_index = 0;
            break;
            
        case CARD_STATE.ATTACK:
            if (image_index >= (idle_anim+1) && image_index <= (idle_anim+1) + attack_anim) image_index++;
            else image_index = (idle_anim+1);
            break;
		
    }
    timer = 0;
}



// 计算深度值
//var depth_value = -((y + depth_offset) * 10 + x);
//depth = depth_value - depth_group * 100;

if hp <= 0{
	instance_destroy()
}

if flash_value >0{
	
	flash_value -= 10
	
}
depth = calculate_plant_depth(grid_col, grid_row, plant_type)
if instance_exists(banding_star_obj){
banding_star_obj.depth = depth - 1
}


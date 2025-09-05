// 控制悬停提示透明度
if global.is_paused{
	exit
}
var slot_key = global.keybind_map[? "铲子"];
// 检测鼠标点击
if (mouse_check_button_pressed(mb_left)) {
    mx = mouse_x;
    my = mouse_y;
    
    if (point_in_rectangle(mx, my, x, y, x+150, y+150)) {
        select_shovel();
		audio_play_sound(snd_shovel,0,0)
    }
}
if keyboard_check_pressed(slot_key){
	if !is_selected{
		select_shovel();
		audio_play_sound(snd_shovel,0,0)
	}
	else{
		deselect_shovel();
	}
}
if ((mouse_check_button_pressed(mb_right) or keyboard_check_pressed(vk_escape)) && is_selected) {
    deselect_shovel();
}
// 在铲子槽对象 (obj_shovel_slot) 的鼠标点击处理中添加:
if ((is_selected && mouse_check_button_pressed(mb_left)) or (is_selected && global.quick_placement)) {
    // 获取鼠标位置对应的网格
    var grid_pos = get_grid_position_from_world(mouse_x, mouse_y);
    var col = grid_pos.col;
    var row = grid_pos.row;
    
    // 检查网格是否有效
    if (col < 0 || col >= global.grid_cols || row < 0 || row >= global.grid_rows) {
        //audio_play_sound(snd_error, 1, false);
        return;
    }
    
    // 获取该网格的植物列表
    var plant_list = ds_grid_get(global.grid_plants, col, row);
    
    // 如果没有植物，播放错误音效
    if (ds_list_size(plant_list) == 0) {
        //audio_play_sound(snd_error, 1, false);
        return;
    }
    
    // 按铲除顺序查找要移除的植物
    var plant_to_remove = noone;
    
    // 按照铲除顺序查找最上层的可移除植物
    for (var i = 0; i < ds_list_size(global.shovel_order); i++) {
        var target_type = ds_list_find_value(global.shovel_order, i);
        
        // 从上层开始查找（列表最后）
        for (var j = ds_list_size(plant_list) - 1; j >= 0; j--) {
            var plant = ds_list_find_value(plant_list, j);
            if (plant.plant_type == target_type and plant.can_shovel_remove) {
                plant_to_remove = plant;
                break;
            }
        }
        
        if (plant_to_remove != noone) break;
    }
    
    // 移除找到的植物
    if (plant_to_remove != noone) {
        // 播放移除效果
        with (plant_to_remove) {
            // 播放移除动画
            instance_create_depth(x+10, y-55, depth, obj_shovel);
			instance_create_depth(x,y,-2,obj_place_effect)
            instance_destroy();
        }
		
		deselect_shovel()
		
		// 重新排序剩余植物
        sort_plants_in_grid(col, row);
        
        // 播放音效
        audio_play_sound(snd_place2, 1, false);
    } else {
		// 没有找到可移除的植物
		instance_create_depth(x+10, y-55, depth, obj_shovel);
		instance_create_depth(x,y,-2,obj_place_effect)
		audio_play_sound(snd_place2, 1, false);
		deselect_shovel()
        
    }
}
//step事件
if global.is_paused{
	exit
}
if cooldown_timer < cooldown{
	cooldown_timer ++


    // 冷却中状态
    is_ready = false;
    cooling_alpha = min(cooling_alpha + 0.05, 0.7); // 淡入冷却效果
} else {
    // 冷却完成状态
    cooling_alpha = max(cooling_alpha - 0.05, 0); // 淡出冷却效果
    
    // 检查阳光是否足够
    if (global.flame >= cost) {
        is_ready = true;
    } else {
        is_ready = false;
    }
}

// 检测鼠标悬停（用于显示提示）
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
var is_hovered = point_in_rectangle(mx, my, x-42, y-55, x+42, y+50);

// 控制悬停提示透明度
if (is_hovered) {
    hover_alpha = min(hover_alpha + 0.1, 1);
} else {
    hover_alpha = max(hover_alpha - 0.1, 0);
}

// 检测鼠标点击（选中卡槽）
if (is_ready && mouse_check_button_pressed(mb_left)) {
    mx = mouse_x;
    my = mouse_y;
    
    if (point_in_rectangle(mx, my, x-50, y-70, x+50, y+70)) {
		
        select_slot()
        
        // 创建放置预览对象
        if (selected_preview == noone) {
            selected_preview = instance_create_depth(mouse_x, mouse_y, depth-2, obj_card_preview);
            selected_preview.preview_sprite = card_spr; // 设置预览精灵
            selected_preview.parent_slot = id; // 设置父卡槽
        }
    }
}

var slot_key = global.keybind_map[? "卡槽" + string(slot_index)];

if keyboard_check_pressed(slot_key) && is_ready{
        // 选中当前卡槽
		if !is_selected{
			select_slot()
        
		if global.quick_placement{
			try_place_once()
		}
		else{
        // 创建放置预览对象
        if (selected_preview == noone) {
            selected_preview = instance_create_depth(mouse_x, mouse_y, depth-2, obj_card_preview);
            selected_preview.preview_sprite = card_spr; // 设置预览精灵
            selected_preview.parent_slot = id; // 设置父卡槽
        }
		}
		}
		else{
			is_selected = false;
	        if (selected_preview != noone && instance_exists(selected_preview)) {
	            instance_destroy(selected_preview);
	        }
	        selected_preview = noone;
	        global.selected_slot = noone;
		}
    }

// 如果当前卡槽被选中，处理放置逻辑
if (is_selected) {
    // 更新预览位置
    if (selected_preview != noone && instance_exists(selected_preview)) {
        selected_preview.x = mouse_x;
        selected_preview.y = mouse_y;
    }
    
    // 右键取消选择
    if (mouse_check_button_pressed(mb_right)) or (keyboard_check_pressed(vk_escape)) {
        is_selected = false;
        if (selected_preview != noone && instance_exists(selected_preview)) {
            instance_destroy(selected_preview);
        }
        selected_preview = noone;
        global.selected_slot = noone;
    }
    
    // 左键尝试放置植物
    if (mouse_check_button_pressed(mb_left)) {
        // 检查是否在可种植区域
        var can_plant = (can_place_at_position(mouse_x, mouse_y, "normal"));
        
        if (can_plant && global.flame >= cost) {
            // 创建植物实例
			var grid_pos = get_grid_position_from_world(mouse_x, mouse_y);
            var new_plant = instance_create_depth(grid_pos.x, grid_pos.y, 0,card_obj);
			//new_plant.plant_type = plant_type;
			// 计算深度值
			var depth_value = calculate_plant_depth(grid_pos.col, grid_pos.row, new_plant.plant_type);
			card_created(new_plant, grid_pos.col, grid_pos.row);
			new_plant.depth = depth_value
			instance_create_depth(grid_pos.x,grid_pos.y,-2,obj_place_effect)
            
            // 扣除阳光
            global.flame -= cost;
            
            // 重置冷却计时器
            cooldown_timer = 0;
            is_ready = false;
            
			audio_play_sound(snd_place1,0,0)
            // 取消选择
            is_selected = false;
            if (selected_preview != noone && instance_exists(selected_preview)) {
                instance_destroy(selected_preview);
            }
            selected_preview = noone;
            global.selected_slot = noone;
        }
    }
}

depth = -1 * slot_index
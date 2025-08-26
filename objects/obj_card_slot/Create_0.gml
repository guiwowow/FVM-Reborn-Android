//create事件
cooldown = 7 * 60
card_obj = obj_small_fire
card_spr = spr_small_fire
cost = 50
night = false
cooldown_timer = 7*60
description = "小火炉:生产火苗"
slot_index = 0
level = 1

is_ready = true           // 卡槽是否可用
is_selected = false       // 卡槽是否被选中
hover_alpha = 0           // 悬停提示透明度
cooling_alpha = 0         // 冷却覆盖层透明度

selected_preview = noone;  // 当前选中的预览对象
preview_alpha = 0.5;      // 放置预览的透明度

image_xscale = 0.33
image_yscale = 0.33
image_speed = 0

//选择卡槽逻辑
function select_slot(){
	// 选中当前卡槽
        is_selected = true;
        
        // 如果有全局选中卡槽，取消其选中状态
		var shovel_slot = instance_find(obj_shovel_slot, 0);
        if (instance_exists(shovel_slot) && shovel_slot.is_selected) {
            deselect_shovel();
        }
        if (global.selected_slot != noone && global.selected_slot != id) {
            global.selected_slot.is_selected = false;
            instance_destroy(global.selected_slot.selected_preview);
            global.selected_slot.selected_preview = noone;
        }
        audio_play_sound(snd_card_lift,0,0)
        // 设置全局选中卡槽为当前卡槽
        global.selected_slot = id;
}

//尝试放置逻辑
function try_place_once(){
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
		else if global.quick_placement{
			// 取消选择
            is_selected = false;
            if (selected_preview != noone && instance_exists(selected_preview)) {
                instance_destroy(selected_preview);
            }
            selected_preview = noone;
            global.selected_slot = noone;
		}
}
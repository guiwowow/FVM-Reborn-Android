// 强制清除application_surface，避免上一房间图像残留
surface_set_target(application_surface);
draw_clear_alpha(c_black, 0); // 用透明黑色清除surface，alpha值0表示完全透明
surface_reset_target();

depth = 5

instance_create_depth(0,0,0,obj_flame_manager)
var mus_inst = instance_create_depth(0,0,0,obj_battle_music_controller)
mus_inst.battle_music = global.level_data.pre_music

global.game_over = false

//instance_create_depth(1800,330,0,obj_enemy_parent)
//instance_create_depth(1800,460,0,obj_enemy_parent)
instance_create_depth(0,0,0,obj_battle_pause_manager)
instance_create_depth(mouse_x,mouse_y,0,obj_player_character)

instance_create_depth(room_width-200,room_height-25,0,obj_level_progress_bar)


global.selected_slot = noone;
global.current_seed = noone;
global.grid_offset_x = 695
global.grid_cell_size_x = 107
global.grid_cell_size_y = 116
global.grid_offset_y = 242
global.grid_cols = global.level_file.map_cols
global.grid_rows = global.level_file.map_rows


//啃食音效
chomp_sound_list = ds_list_create()
battle_time = 0
ds_list_add(chomp_sound_list,snd_chomp1)
ds_list_add(chomp_sound_list,snd_chomp2)
ds_list_add(chomp_sound_list,snd_chomp3)
// 植物层级定义
global.plant_layers = ds_map_create();
ds_map_add(global.plant_layers, "normal", 0);      // 普通植物
ds_map_add(global.plant_layers, "shield_inner", 1);      // 护罩植物内侧
ds_map_add(global.plant_layers, "lilypad", 2);     // 莲叶花盆类
ds_map_add(global.plant_layers, "shield_outer", 3);      // 护罩植物外侧
ds_map_add(global.plant_layers, "coffee", 4);      // 咖啡豆类

// 铲除顺序
global.shovel_order = ds_list_create();
ds_list_add(global.shovel_order,"coffee" ,"normal", "shield", "lilypad");

// 网格植物存储数据结构
global.grid_plants = ds_grid_create(global.grid_cols, global.grid_rows);

// 初始化网格
for (var col = 0; col < global.grid_cols; col++) {
    for (var row = 0; row < global.grid_rows; row++) {
        // 每个网格存储一个 ds_list，包含该网格的所有植物实例
        var plant_list = ds_list_create();
        ds_grid_set(global.grid_plants, col, row, plant_list);
    }
}

var plant_list = global.level_file.map
for(var i = 0 ; i < global.grid_rows ; i++){
	for(var j = 0 ; j < global.grid_cols ; j ++){
		if plant_list[i][j].plant != ""{
			var card_data = deck_get_card_data(plant_list[i][j].plant,0)
			var card_obj = card_data[? "obj"]
			var new_x = global.grid_offset_x + j * global.grid_cell_size_x
			var new_y = global.grid_offset_y + i * global.grid_cell_size_y
			var grid_pos = get_grid_position_from_world(new_x,new_y)
			var new_plant = instance_create_depth(grid_pos.x, grid_pos.y, 0,card_obj);
			var depth_value = calculate_plant_depth(j, i, new_plant.plant_type);
			card_created(new_plant, j, i);
			new_plant.depth = depth_value
		}
	}
	var new_x = global.grid_offset_x -1 * global.grid_cell_size_x
	var new_y = global.grid_offset_y + i * global.grid_cell_size_y
	var grid_pos = get_grid_position_from_world(new_x,new_y)
	var cat_inst = instance_create_depth(grid_pos.x, grid_pos.y, 0,obj_cat);
	cat_inst.row = i
}

//关卡波次
current_wave = 0
current_subwave = 0
total_wave = global.level_file.total_waves
level_stage = "ready"
current_total_hp = 0
current_wave_hp = 0
hp_ratio = 0.5
enemy_list = []

wave_max_time = 25*60
wave_min_time = 4 * 60
wave_timer = 0
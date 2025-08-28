// 强制清除application_surface，避免上一房间图像残留
surface_set_target(application_surface);
draw_clear_alpha(c_black, 0); // 用透明黑色清除surface，alpha值0表示完全透明
surface_reset_target();

instance_create_depth(0,0,0,obj_flame_manager)
instance_create_depth(0,0,0,obj_battle_music_controller)
ds_list_clear(global.selected_deck);
add_to_deck("xiao_long_bao",0);
add_to_deck("small_fire",0);

instance_create_depth(1800,330,0,obj_normal_mouse)
instance_create_depth(1800,460,0,obj_normal_mouse)
instance_create_depth(0,0,0,obj_battle_pause_manager)


global.selected_slot = noone;
global.current_seed = noone;
global.grid_offset_x = 695
global.grid_cell_size_x = 107
global.grid_cell_size_y = 116
global.grid_offset_y = 242
global.grid_cols = 9
global.grid_rows = 7

//啃食音效
chomp_sound_list = ds_list_create()
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
ds_list_add(global.shovel_order, "normal", "shield", "lilypad");

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
if keyboard_check_released(vk_space){
	
}
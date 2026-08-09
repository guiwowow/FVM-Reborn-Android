// obj_plant_preview DRAW 事件

if not global.is_paused{
    if (!variable_instance_exists(id, "logical_base_x")) {
        logical_base_x = x;
        logical_base_y = y;
        platform_shift_x = 0;
        platform_shift_y = 0;
    }

// 绘制地面上的半透明预览
var grid_pos = get_nearest_grid_position(logical_base_x, logical_base_y); // 获取最近的网格位置
var draw_pos_x = grid_pos.x + platform_shift_x;
var draw_pos_y = grid_pos.y + platform_shift_y;

// PVZ 式放置引导：十字线完全跟随预览精灵（预览中心 ± 半格），不做行列反推（消除 round/floor/clamp 偏差）
var _half_x = global.grid_cell_size_x * 0.5;
var _half_y = global.grid_cell_size_y * 0.5;
// 补偿：背景贴图网格线与 grid_offset 存在系统性偏差（黄框调试测得下移 2-4px），高亮整体上移补偿
var _comp_y = 3;
var _comp_x = 2;
draw_set_alpha(0.3);
draw_set_color(c_white);
// 行高亮：整行宽度，Y = 预览中心上下半格（含补偿）
draw_rectangle(global.grid_offset_x, draw_pos_y - _half_y - _comp_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, draw_pos_y + _half_y - _comp_y, false);
// 列高亮：整列高度，X = 预览中心左右半格（含补偿）
draw_rectangle(draw_pos_x - _half_x - _comp_x, global.grid_offset_y, draw_pos_x + _half_x - _comp_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, false);
draw_set_alpha(1);

// ===== 调试标记 v2（draw_rectangle 方块，定位后删除）=====
// 红方块：预览锚点 draw_pos（行高亮中线）
draw_set_color(c_black); draw_rectangle(draw_pos_x - 9, draw_pos_y - 9, draw_pos_x + 9, draw_pos_y + 9, false);
draw_set_color(c_red); draw_rectangle(draw_pos_x - 7, draw_pos_y - 7, draw_pos_x + 7, draw_pos_y + 7, false);
// 青方块：逻辑格中心 grid_pos
draw_set_color(c_aqua); draw_rectangle(grid_pos.x - 6, grid_pos.y - 6, grid_pos.x + 6, grid_pos.y + 6, false);
// 黄框：grid_offset 网格区域边框
draw_set_color(c_yellow); draw_rectangle(global.grid_offset_x, global.grid_offset_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, true);
// ===== 调试标记结束 =====

if (is_valid) {
    draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_white, 0.5);
} else {
    //draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_red, 0.3);
}

// 绘制实体预览（跟随鼠标）
draw_sprite_ext(preview_sprite, 0, x, y,1.8,1.8,0,c_white,1);
}
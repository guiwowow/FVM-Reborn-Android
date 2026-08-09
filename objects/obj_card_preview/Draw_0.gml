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
draw_set_alpha(0.3);
draw_set_color(c_white);
// 行高亮：整行宽度，Y = 预览中心上下半格（行高亮中线 = 预览中心 = 格中心）
draw_rectangle(global.grid_offset_x, draw_pos_y - _half_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, draw_pos_y + _half_y, false);
// 列高亮：整列高度，X = 预览中心左右半格
draw_rectangle(draw_pos_x - _half_x, global.grid_offset_y, draw_pos_x + _half_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, false);
draw_set_alpha(1);

// ===== 调试标记（定位十字线偏移用，定位后删除）=====
// 红点：预览锚点 draw_pos（行高亮中线）
draw_set_color(c_red); draw_circle(draw_pos_x, draw_pos_y, 7, false);
// 青点：逻辑格中心 grid_pos
draw_set_color(c_aqua); draw_circle(grid_pos.x, grid_pos.y, 5, false);
// 黄框：grid_offset 网格区域边框
draw_set_color(c_yellow); draw_rectangle(global.grid_offset_x, global.grid_offset_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, true);
// 绿点：预览精灵视觉中心估算（sprite origin 反推）
var _spr_top = sprite_get_ymin(preview_sprite) * 1.8;
var _spr_bot = sprite_get_ymax(preview_sprite) * 1.8;
var _vis_cy = draw_pos_y + (_spr_top + _spr_bot) * 0.5;
draw_set_color(c_lime); draw_circle(draw_pos_x, _vis_cy, 4, false);
// ===== 调试标记结束 =====

if (is_valid) {
    draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_white, 0.5);
} else {
    //draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_red, 0.3);
}

// 绘制实体预览（跟随鼠标）
draw_sprite_ext(preview_sprite, 0, x, y,1.8,1.8,0,c_white,1);
}
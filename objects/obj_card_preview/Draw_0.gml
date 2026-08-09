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

// PVZ 式放置引导：十字线跟随预览精灵视觉中心（origin 反推；preview_sprite 无效时回退锚点）
var _vis_cx = draw_pos_x;
var _vis_cy = draw_pos_y;
if (preview_sprite >= 0) {
    _vis_cx = draw_pos_x + (sprite_get_width(preview_sprite) * 0.5 - sprite_get_xoffset(preview_sprite)) * 1.8;
    _vis_cy = draw_pos_y + (sprite_get_height(preview_sprite) * 0.5 - sprite_get_yoffset(preview_sprite)) * 1.8;
}
_vis_cy += 50;  // [调试] 红点下移 50px 标定（定位后调整/移除）
var _half_x = global.grid_cell_size_x * 0.5;
var _half_y = global.grid_cell_size_y * 0.5;
draw_set_alpha(0.3);
draw_set_color(c_white);
// 行高亮：整行宽度，Y = 预览视觉中心 ± 半格
draw_rectangle(global.grid_offset_x, _vis_cy - _half_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, _vis_cy + _half_y, false);
// 列高亮：整列高度，X = 预览视觉中心 ± 半格
draw_rectangle(_vis_cx - _half_x, global.grid_offset_y, _vis_cx + _half_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, false);
draw_set_alpha(1);

// ===== 验证红点（预览视觉中心，截图确认是否在虚影正中心；确认后删除）=====
draw_set_color(c_red); draw_rectangle(_vis_cx - 6, _vis_cy - 6, _vis_cx + 6, _vis_cy + 6, false);
// ===== 验证红点结束 =====

if (is_valid) {
    draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_white, 0.5);
} else {
    //draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_red, 0.3);
}

// 绘制实体预览（跟随鼠标）
draw_sprite_ext(preview_sprite, 0, x, y,1.8,1.8,0,c_white,1);
}
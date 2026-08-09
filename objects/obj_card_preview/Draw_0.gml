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

// PVZ 式放置引导：十字线 = 手指所在格（与 obj_card_slot 放置判定同源 get_grid_position_from_world(mouse_x, mouse_y)）
var _gp = get_grid_position_from_world(mouse_x, mouse_y);
var _row = clamp(_gp.row, 0, global.grid_rows - 1);
var _col = clamp(_gp.col, 0, global.grid_cols - 1);
var _gx = global.grid_offset_x + _col * global.grid_cell_size_x;
var _gy = global.grid_offset_y + _row * global.grid_cell_size_y;
draw_set_alpha(0.3);
draw_set_color(c_white);
// 行高亮：手指所在整行（含 platform_shift 视觉跟随）
draw_rectangle(global.grid_offset_x, _gy + platform_shift_y, global.grid_offset_x + global.grid_cols * global.grid_cell_size_x, _gy + global.grid_cell_size_y + platform_shift_y, false);
// 列高亮：手指所在整列
draw_rectangle(_gx + platform_shift_x, global.grid_offset_y, _gx + global.grid_cell_size_x + platform_shift_x, global.grid_offset_y + global.grid_rows * global.grid_cell_size_y, false);
draw_set_alpha(1);

if (is_valid) {
    draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_white, 0.5);
} else {
    //draw_sprite_ext(preview_sprite, 0, draw_pos_x, draw_pos_y, 1.8, 1.8, 0, c_red, 0.3);
}

// 绘制实体预览（跟随鼠标）
draw_sprite_ext(preview_sprite, 0, x, y,1.8,1.8,0,c_white,1);
}
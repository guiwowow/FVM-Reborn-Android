draw_sprite(global.level_data.level_sprite,map_spr_index,0,0)

// PVZ 式放置引导线：选中卡片/铲子时高亮鼠标所在行+列（白色半透明）
// 画在 obj_battle 层（depth 50）→ 地图之上、植物之下（PVZ 同款层级）
// 列/行索引按逻辑网格取（= 植物实际落点格）；像素位置用贴图校准网格（视觉贴格，get_painted_grid）
// 未校准地图回退逻辑网格；移动平台关跟随平台移动
var _show = false;
var _psx = 0;
var _psy = 0;
var _pv = instance_find(obj_card_preview, 0);
if (instance_exists(_pv)) {
    _show = true;
    _psx = _pv.platform_shift_x;
    _psy = _pv.platform_shift_y;
} else if (instance_exists(obj_shovel_slot) && obj_shovel_slot.is_selected) {
    _show = true;
}
if (_show && !global.is_paused) {
    var _g = get_painted_grid(global.level_data.level_sprite, map_spr_index);
    var _ox = global.grid_offset_x + _psx;
    var _oy = global.grid_offset_y + _psy;
    var _cw = global.grid_cell_size_x;
    var _ch = global.grid_cell_size_y;
    if (_g != undefined) {
        _ox = _g.ox + _psx;
        _oy = _g.oy + _psy;
        _cw = _g.cw;
        _ch = _g.ch;
    }
    var _col = clamp(floor((mouse_x - (global.grid_offset_x + _psx)) / global.grid_cell_size_x), 0, global.grid_cols - 1);
    var _row = clamp(floor((mouse_y - (global.grid_offset_y + _psy)) / global.grid_cell_size_y), 0, global.grid_rows - 1);
    draw_set_alpha(0.2);
    draw_set_color(c_white);
    draw_rectangle(_ox, _oy + _row * _ch, _ox + global.grid_cols * _cw, _oy + (_row + 1) * _ch, false);
    draw_rectangle(_ox + _col * _cw, _oy, _ox + (_col + 1) * _cw, _oy + global.grid_rows * _ch, false);
    draw_set_alpha(1);
}

draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_color(c_white)
draw_set_font(font_yuan)
draw_text(0,0,"FPS:"+string(fps))
draw_text(0,25,"加速:"+(speed_up ? "开" : "关") + "（shift）")
draw_text(0,50,"暂停（空格）\n菜单（ESC）")

// 【调试】触控标定测量层（仅 global.debug 构建显示；Step_0 按下会 logcat 同款数据）
if (global.debug) {
    var _gp = get_grid_position_from_world(mouse_x, mouse_y);
    var _pg = get_painted_grid(global.level_data.level_sprite, map_spr_index);
    var _vx = _gp.x;
    var _vy = _gp.y;
    if (_pg != undefined) {
        _vx = _pg.ox + _gp.col * _pg.cw + _pg.cw / 2;
        _vy = _pg.oy + _gp.row * _pg.ch + _pg.ch / 2;
    }
    // 触点（红十字）
    draw_set_color(c_red);
    draw_line(mouse_x - 12, mouse_y, mouse_x + 12, mouse_y);
    draw_line(mouse_x, mouse_y - 12, mouse_x, mouse_y + 12);
    // 逻辑放置中心（黄圈；塔实际落点）
    draw_set_color(c_yellow);
    draw_circle(_gp.x, _gp.y, 6, false);
    // 校准视觉中心（绿圈；玩家看到的格子中心）
    if (_pg != undefined) {
        draw_set_color(c_lime);
        draw_circle(_vx, _vy, 6, false);
        draw_line(mouse_x, mouse_y, _vx, _vy);
    }
    // 数据面板
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(0, 150, 620, 310, false);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_set_font(font_yuan);
    draw_text(5, 155, "TAP room(" + string(floor(mouse_x)) + "," + string(floor(mouse_y)) + ") gui(" + string(floor(device_mouse_x_to_gui(0))) + "," + string(floor(device_mouse_y_to_gui(0))) + ")");
    draw_text(5, 175, "dev(" + string(floor(device_mouse_x(0))) + "," + string(floor(device_mouse_y(0))) + ") win(" + string(window_get_width()) + "x" + string(window_get_height()) + ")");
    draw_text(5, 195, "cell(" + string(_gp.col) + "," + string(_gp.row) + ")");
    draw_text(5, 215, "Dplace(逻辑)=(" + string(floor(mouse_x - _gp.x)) + "," + string(floor(mouse_y - _gp.y)) + ")");
    draw_text(5, 235, "Dvisual(校准)=(" + string(floor(mouse_x - _vx)) + "," + string(floor(mouse_y - _vy)) + ")");
    draw_text(5, 255, "网格: 逻辑(" + string(global.grid_offset_x) + "," + string(global.grid_offset_y) + ") 校准" + ((_pg != undefined) ? ("(" + string(_pg.ox) + "," + string(_pg.oy) + "," + string(_pg.cw) + "," + string(_pg.ch) + ")") : "无"));
    if (mouse_check_button_pressed(mb_left)) {
        draw_set_color(c_lime);
        draw_text(5, 275, "已记录本次触控到 logcat（yoyo）");
    }
}

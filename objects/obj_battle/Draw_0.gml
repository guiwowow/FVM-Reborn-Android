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

// 【调试】右上角“召唤BOSS”按钮（仅 global.debug 构建显示；Step_0 里处理点按）
if (global.debug) {
    draw_set_color(c_black);
    draw_set_alpha(0.6);
    draw_rectangle(room_width - 220, 15, room_width - 30, 80, false);
    draw_set_alpha(1);
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_font(font_yuan);
    draw_text(room_width - 125, 47, "召唤BOSS");
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

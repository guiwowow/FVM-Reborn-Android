// Draw GUI 事件：绘制触屏虚拟按钮
// 仅在有战斗 HUD（卡槽/铲子槽）时显示

if (os_type == os_windows || !in_battle_hud() || global.is_paused) exit;

// ---- 取消按钮（右上角）----
var _c = cancel_btn;
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle_rounded(_c.x, _c.y, _c.x + _c.w, _c.y + _c.h, 14, 14, true);
draw_set_alpha(1);
draw_set_color(c_red);
draw_rectangle_rounded(_c.x + 3, _c.y + 3, _c.x + _c.w - 3, _c.y + _c.h - 3, 12, 12, true);
// X 图标
draw_set_color(c_white);
draw_set_line_width(5);
draw_line(_c.x + 24, _c.y + 24, _c.x + _c.w - 24, _c.y + _c.h - 24);
draw_line(_c.x + _c.w - 24, _c.y + 24, _c.x + 24, _c.y + _c.h - 24);
draw_set_line_width(1);

// ---- 铲子切换按钮（左上角）----
var _s = shovel_btn;
var _shovel_selected = false;
var _shovel_slot = instance_find(obj_shovel_slot, 0);
if (instance_exists(_shovel_slot)) {
    _shovel_selected = _shovel_slot.is_selected;
}
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle_rounded(_s.x, _s.y, _s.x + _s.w, _s.y + _s.h, 14, 14, true);
draw_set_alpha(1);
if (_shovel_selected) {
    draw_set_color(c_lime);
} else {
    draw_set_color(c_olive);
}
draw_rectangle_rounded(_s.x + 3, _s.y + 3, _s.x + _s.w - 3, _s.y + _s.h - 3, 12, 12, true);
// 铲子图标（简化：铲头 + 铲柄）
var _cx = _s.x + _s.w * 0.5;
var _cy = _s.y + _s.h * 0.5;
draw_set_color(c_white);
draw_set_line_width(5);
// 铲柄（斜线，左上到右下）
draw_line(_cx - 20, _cy + 26, _cx + 20, _cy - 26);
// 铲头（梯形）
draw_set_line_width(3);
draw_line(_cx + 10, _cy - 32, _cx + 28, _cy - 26);
draw_line(_cx + 28, _cy - 26, _cx + 22, _cy - 6);
draw_line(_cx + 22, _cy - 6, _cx + 4, _cy - 12);
draw_line(_cx + 4, _cy - 12, _cx + 10, _cy - 32);
draw_set_line_width(1);

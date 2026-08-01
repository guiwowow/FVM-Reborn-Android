// Step 事件：检测双指取消 与 触屏按钮点击

// 双指点击 = 取消当前选中
var _count = device_get_touch_count();
if (_count >= 2 && prev_touch_count < 2) {
    if (in_battle_hud() && !global.is_paused) {
        cancel_current_selection();
    }
}
prev_touch_count = _count;

// 触屏按钮点击检测（使用 GUI 坐标，仅移动端显示）
if (os_type != os_windows && in_battle_hud() && !global.is_paused) {
    var _tx = device_mouse_x_to_gui(0);
    var _ty = device_mouse_y_to_gui(0);
    if (device_mouse_check_button_pressed(0, mb_left)) {
        // 取消按钮
        if (point_in_rectangle(_tx, _ty, cancel_btn.x, cancel_btn.y,
                cancel_btn.x + cancel_btn.w, cancel_btn.y + cancel_btn.h)) {
            cancel_current_selection();
        }
        // 铲子切换按钮
        else if (point_in_rectangle(_tx, _ty, shovel_btn.x, shovel_btn.y,
                shovel_btn.x + shovel_btn.w, shovel_btn.y + shovel_btn.h)) {
            toggle_shovel();
        }
    }
}

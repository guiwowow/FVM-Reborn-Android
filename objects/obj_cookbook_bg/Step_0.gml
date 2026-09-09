// 安卓：双指滑动替代滚轮（食神谱食谱列表）
// 方向约定：手指向上 = 界面向下（与背包 obj_package_bg / 合成屋 obj_craft_bg / 选卡 obj_readyroom_manager / GridList 一致）
// y_offset = 列表项索引（窗口 6 项，滚轮 Mouse_60/61 每格 6 项）；双指 50px 位移 = 滚 1 项（≈2x，与其它界面手感一致）。
// 注意：只用 device_mouse_*（手册 §6 表 ✅）；device_get_touch_count 在 YYC 编译失败，别用。
if (os_type != os_windows && !is_submenu_opened) {
    if (device_mouse_check_button(1, mb_left)) {
        var _sy = device_mouse_y(1);
        if (second_touch_active) {
            var _dy = _sy - second_touch_y_prev;
            if (_dy != 0) {
                two_finger_accum += _dy;
                var _steps = abs(two_finger_accum) div 50;  // 50px 位移 = 滚 1 项
                if (_steps > 0) {
                    var _dir = sign(two_finger_accum);
                    for (var _i = 0; _i < _steps; _i++) {
                        if (_dir > 0) {
                            // 手指下移 = 滚轮向下（Mouse_61 逻辑）：内容上移
                            if (y_offset < array_length(current_cookbook_list) - 6) {
                                y_offset += 1;
                            }
                        } else {
                            // 手指上移 = 滚轮向上（Mouse_60 逻辑）：内容下移
                            if (y_offset > 0) {
                                y_offset -= 1;
                            }
                        }
                    }
                    two_finger_accum -= _dir * _steps * 50;
                }
            }
        }
        second_touch_y_prev = _sy;
        second_touch_active = true;
    } else {
        second_touch_active = false;
        two_finger_accum = 0;
    }
}

// 安卓：双指滑动替代滚轮（背包列表，与合成屋 obj_craft_bg/Step_0、选卡 obj_readyroom_manager/Step_0 一致）
// 第二指按下=滚轮；20px 第二指位移 = 滚一格（40px y_offset），上下边界复用 Mouse_60/61 逻辑。
// 注意：只用 device_mouse_*（§4 表 ✅）；device_get_touch_count 在 YYC 编译失败，别用。
if (os_type != os_windows && !is_submenu_opened) {
    if (device_mouse_check_button(1, mb_left)) {
        var _sy = device_mouse_y(1);
        if (second_touch_active) {
            var _dy = _sy - second_touch_y_prev;
            if (_dy != 0) {
                var _steps = abs(_dy) div 20;  // 20px 位移 = 滚一格
                for (var _i = 0; _i < _steps; _i++) {
                    if (_dy > 0) {
                        // 滚轮向下（Mouse_61 逻辑）
                        if (package_button_select == 1) {
                            if (y_offset < (package_rows - 8) * 96 - 40) {
                                y_offset += 40
                            } else {
                                y_offset = (package_rows - 8) * 96
                            }
                        } else {
                            if (y_offset < (package_rows - 9) * 88 - 40) {
                                y_offset += 40
                            } else {
                                y_offset = (package_rows - 9) * 88
                            }
                        }
                    } else {
                        // 滚轮向上（Mouse_60 逻辑）
                        if (y_offset > 40) {
                            y_offset -= 40
                        } else {
                            y_offset = 0
                        }
                    }
                }
            }
        }
        second_touch_y_prev = _sy;
        second_touch_active = true;
    } else {
        second_touch_active = false;
    }
}

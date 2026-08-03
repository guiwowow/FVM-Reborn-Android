if close_timer > 0{
	close_timer --
}
if close_timer == 0{
	instance_destroy()
}

// 安卓：双指滑动替代滚轮（合成屋卡片列表，与选卡界面一致）
if (os_type != os_windows) {
    if (device_mouse_check_button(1, mb_left)) {
        var _sy = device_mouse_y(1);
        if (second_touch_active) {
            var _dy = _sy - second_touch_y_prev;
            if (_dy != 0) {
                var _steps = abs(_dy) div 20;  // 20px 位移 = 滚一格
                for (var _i = 0; _i < _steps; _i++) {
                    if (_dy > 0) {
                        // 滚轮向下（Mouse_61 逻辑）
                        if y_offset <= 96*20 - 40 - 815 { y_offset += 40 } else { y_offset = 96*20 - 815 }
                    } else {
                        // 滚轮向上（Mouse_60 逻辑）
                        if y_offset > 40 { y_offset -= 40 } else { y_offset = 0 }
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
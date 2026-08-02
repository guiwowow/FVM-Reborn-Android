
    if (not audio_is_playing(readyroom_music)) {
        // 停止可能存在的暂停实例
        audio_stop_sound(readyroom_music);
        // 从头开始播放新实例
        audio_play_sound(readyroom_music, 0, 0);
    }
if keyboard_check_pressed(vk_escape){
	if instance_exists(obj_quit_confirm){
		instance_destroy(obj_quit_confirm)
	}
	else{
		if !is_submenu_open{
			instance_create_depth(room_width / 2,room_height / 2,-100,obj_quit_confirm)
		}
	}
}

if instance_exists(obj_quit_confirm) || instance_exists(obj_level_preview){
	is_submenu_open = true
}
else{
	is_submenu_open = false
}

// 安卓：双指滑动替代滚轮（选卡列表 y_offset，与 Mouse_60/61 滚轮逻辑一致）
if (os_type != os_windows && !is_submenu_open) {
    if (device_mouse_check_button(1, mb_left)) {
        var _sy = device_mouse_y(1);
        if (second_touch_active) {
            var _dy = _sy - second_touch_y_prev;
            if (_dy != 0) {
                var _steps = abs(_dy) div 20;  // 20px 位移 = 滚一格
                for (var _i = 0; _i < _steps; _i++) {
                    if (_dy > 0) {
                        // 滚轮向下（Mouse_61 逻辑）
                        if y_offset <= 96*slot_rows - 40 - 515 { y_offset += 40 } else { y_offset = 96*slot_rows - 515 }
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


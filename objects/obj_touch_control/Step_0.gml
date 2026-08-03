// Step 事件：安卓触屏适配
// 注意：YYC 模式下 device_* 触摸函数编译失败，暂不使用；基础点击由 mouse 模拟处理
// 返回键：GameMaker 2026 安卓返回键未映射 vk_escape，用"屏幕右上角点击 = ESC"替代
// 空格：暂停/结算时点击屏幕 = 空格（已在 obj_battle_pause_manager 处理）

prev_touch_count = 0;

// 安卓锁帧 60：高刷屏下 game_set_speed 失效，用 current_time 忙等补偿（锁逻辑帧防加速）
// 注意：不能用 sleep（YYC 安卓运行时非方法，会报 not a method）
if (os_type != os_windows) {
    if (fps > 62) {
        var _target_ms = 1000 / 60;
        var _frame_dur = current_time - _last_frame_time;
        if (_frame_dur > 0 && _frame_dur < _target_ms - 1) {
            var _wait_ms = _target_ms - _frame_dur;
            var _wait_start = current_time;
            while (current_time - _wait_start < _wait_ms) {}
        }
    }
    _last_frame_time = current_time;
}

// 帧耗时监控（调试用，发布前移除）
if (false) {
    var _now = current_time;
    var _elapsed = _now - _prev_frame_time;
    _prev_frame_time = _now;
    if (_elapsed > 150 && _now > 1000) {
        var _lg = file_text_open_append("lag_log.txt");
        file_text_write_string(_lg, "[LAG] elapsed=" + string(_elapsed) + "ms fps=" + string(fps) + " objs=" + string(instance_count) + " room=" + room_get_name(room) + " enemies=" + string(instance_number(obj_enemy_parent)) + "\n");
        file_text_close(_lg);
    }
}

if (os_type != os_windows) {
    // 屏幕左上角区域点击 = 空格暂停（战斗专属，配合 Draw 的暂停按钮）
    if (instance_exists(obj_battle) && mouse_check_button_pressed(mb_left)) {
        if (mouse_x < 150 && mouse_y < 150) {
            keyboard_key_press(vk_space);
            keyboard_key_release(vk_space);
        }
    }
    // 屏幕左下角区域点击 = ESC（安卓替代返回键，配合 Draw 的 ESC 按钮）
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x < 130 && mouse_y > room_height - 130) {
            keyboard_key_press(vk_escape);
            keyboard_key_release(vk_escape);
        }
    }
}

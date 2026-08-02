// Step 事件：安卓触屏适配
// 注意：YYC 模式下 device_* 触摸函数编译失败，暂不使用；基础点击由 mouse 模拟处理
// 返回键：GameMaker 2026 安卓返回键未映射 vk_escape，用"屏幕右上角点击 = ESC"替代
// 空格：暂停/结算时点击屏幕 = 空格（已在 obj_battle_pause_manager 处理）

prev_touch_count = 0;

if (os_type != os_windows) {
    // 返回键 = ESC（若设备映射了 vk_escape 则直接生效）
    if (keyboard_check_pressed(vk_escape)) {
        show_notice("返回键=ESC", 60);
    }
    // 屏幕右上角区域点击 = ESC（安卓替代返回键）
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x > room_width - 50 && mouse_y < 150) {
            keyboard_key_press(vk_escape);
            keyboard_key_release(vk_escape);
            show_notice("ESC", 60);
        }
    }
}

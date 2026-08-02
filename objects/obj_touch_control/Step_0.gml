// Step 事件：安卓触屏适配
// 注意：YYC 模式下 device_* 触摸函数编译失败，暂不使用；基础点击由 mouse 模拟处理
// 返回键：GameMaker 2026 安卓返回键未映射 vk_escape，用"屏幕右上角点击 = ESC"替代
// 空格：暂停/结算时点击屏幕 = 空格（已在 obj_battle_pause_manager 处理）

prev_touch_count = 0;

if (os_type != os_windows) {
    // 屏幕左上角区域点击 = 空格暂停（战斗专属，配合 Draw 的暂停按钮）
    if (instance_exists(obj_battle) && mouse_check_button_pressed(mb_left)) {
        if (mouse_x < 150 && mouse_y < 150) {
            keyboard_key_press(vk_space);
            keyboard_key_release(vk_space);
        }
    }
    // 屏幕右上角区域点击 = ESC（安卓替代返回键）
    if (mouse_check_button_pressed(mb_left)) {
        if (mouse_x > room_width - 125 && mouse_y < 150) {
            keyboard_key_press(vk_escape);
            keyboard_key_release(vk_escape);
        }
    }
}

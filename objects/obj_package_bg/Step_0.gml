// 安卓：双指滑动替代滚轮（背包列表，与合成屋 obj_craft_bg/Step_0、选卡 obj_readyroom_manager/Step_0 一致）
// B6 重构：公共部分收敛到 scripts/two_finger_scroll；本界面差异 = 步长 20px、y_offset 步进 40px、
//          上下边界随 package_button_select 变化。
// 注意：只用 device_mouse_*（§4 表 ✅）；device_get_touch_count 在 YYC 编译失败，别用。
if (os_type != os_windows && !is_submenu_opened) {
    two_finger_scroll(20, function(_finger_down) {
        if (_finger_down) {
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
    });
}

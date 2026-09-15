// 安卓：双指滑动替代滚轮（食神谱食谱列表）
// B6 重构：公共部分（第二指判定/位移/切格/状态维护）收敛到 scripts/two_finger_scroll；
//          本界面差异 = 步长 50px、跨帧累加余量（Create 里已初始化 two_finger_accum → 自动启用）、
//          边界 = 列表项索引（窗口 6 项）。
// 方向约定：手指向上 = 界面向下（与背包 obj_package_bg / 合成屋 obj_craft_bg / 选卡 obj_readyroom_manager / GridList 一致）
// 注意：只用 device_mouse_*（手册 §6 表 ✅）；device_get_touch_count 在 YYC 编译失败，别用。
if (os_type != os_windows && !is_submenu_opened) {
    two_finger_scroll(50, function(_finger_down) {
        if (_finger_down) {
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
    });
}

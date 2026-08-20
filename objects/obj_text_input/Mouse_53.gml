// obj_text_input 全局鼠标按下事件
// 检查是否点击了输入框
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)) {
    active = true;
    // 移动端（安卓/iOS）无硬件键盘且 GMS 没有"主动弹出软键盘"的 API：
    // 用内置 get_string_async 弹系统输入对话框（自带软键盘）来输入，
    // 结果在 Async - Dialog 事件（Other_63.gml）里接收后写回 text。
    // 只在用户实际点击输入框时触发；不响应 obj_edit_menu Create 里的自动 active=true
    // （避免打开改名菜单就立刻弹对话框）。PC 保持原内联键盘输入不变。
    if (os_type != os_windows) {
        var _prompt = placeholder;
        if (_prompt == "") {
            _prompt = "请输入";
        }
        dialog_id = get_string_async(_prompt, text);
        // 同步版 get_string 在安卓已弃用（弹出"Please use get_string_async instead"）。
        // 对话框返回前 active 保持 true（输入框呈聚焦态），返回后置 false。
    }
} else {
    active = false;
}
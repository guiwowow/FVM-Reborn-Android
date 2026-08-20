// obj_text_input 全局鼠标按下事件
// 检查是否点击了输入框
if (point_in_rectangle(mouse_x, mouse_y, x, y, x + width, y + height)) {
    active = true;
    // 移动端（安卓/iOS）无硬件键盘且 GMS 没有"主动弹出软键盘"的 API：
    // 用内置 get_string 弹系统输入对话框（自带软键盘）来输入，结果写回 text。
    // 只在用户实际点击输入框时触发；不响应 obj_edit_menu Create 里的自动 active=true
    // （避免打开改名菜单就立刻弹对话框）。PC 保持原内联键盘输入不变。
    if (os_type != os_windows) {
        var _prompt = placeholder;
        if (_prompt == "") {
            _prompt = "请输入";
        }
        var _result = get_string(_prompt, text);
        text = string_copy(_result, 1, max_length);
        active = false;
    }
} else {
    active = false;
}
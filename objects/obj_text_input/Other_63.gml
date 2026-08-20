// Async - Dialog 事件：接收 get_string_async 的系统输入对话框结果（移动端呼出软键盘）。
// .yy 序列化：eventType=7, eventNum=63（项目内既有范例 obj_edit_menu/Other_63.gml、
// obj_update_checker_btn/Other_62.gml 用 async_load[? "key"] 读 ds_map）。
if (dialog_id != -1 && async_load[? "id"] == dialog_id) {
    var _res = async_load[? "result"];
    if (_res == "OK") {
        var _input = async_load[? "text"];
        text = string_copy(_input, 1, max_length);
        active = false;
    } else {
        // Cancel / Back：保留原 text，不修改，输入框退出聚焦
        active = false;
    }
    dialog_id = -1;
}

// Async - Dialog 事件：接收 get_string_async 的系统输入对话框结果（移动端呼出软键盘）。
// .yy 序列化：eventType=7, eventNum=63（项目既有范例 obj_edit_menu/Other_63.gml、
// obj_update_checker_btn/Other_62.gml 用 async_load 读回调）。
// async_load 兼容两种读法：ds_map（[? "key"]）与 struct（[$ "key"]）——2026 运行时差异免疫。

var _fired_id   = (is_struct(async_load) ? async_load[$ "id"]     : async_load[? "id"]);
var _fired_res  = (is_struct(async_load) ? async_load[$ "result"] : async_load[? "result"]);
var _fired_text = (is_struct(async_load) ? async_load[$ "text"]   : async_load[? "text"]);

show_debug_message("输入对话框回调 fired: myid=" + string(dialog_id) + " 事件id=" + string(_fired_id)
    + " 结果=" + string(_fired_res) + " 文本长度=" + string(string_length(string(_fired_text))));

if (dialog_id != -1 && _fired_id == dialog_id) {
    if (_fired_res == "OK") {
        text = string_copy(_fired_text, 1, max_length);
        active = false;
        show_debug_message("输入对话框回写成功: text=" + text);
    } else {
        // Cancel / Back：保留原 text，不修改，输入框退出聚焦
        active = false;
    }
    dialog_id = -1;
} else {
    // 不是我们的对话框（dialog_id 已重置或不匹配）：忽略
    show_debug_message("输入对话框回调忽略: dialog_id 已重置或不匹配");
}

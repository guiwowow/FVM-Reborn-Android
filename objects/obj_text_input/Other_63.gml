// Async - Dialog 事件：接收 get_string_async 的系统输入对话框结果（移动端呼出软键盘）。
// .yy 序列化：eventType=7, eventNum=63（项目既有范例 obj_edit_menu/Other_63.gml、
// obj_update_checker_btn/Other_62.gml 用 async_load 读回调）。
// async_load 兼容两种读法：ds_map（[? "key"]）与 struct（[$ "key"]）——2026 运行时差异免疫。
// 稳健处理：只要存在待处理对话框（dialog_id != -1），且事件 id 缺失或不匹配也视为本对话框回调；
// 仅当 result 明确为 Cancel/Back 才放弃，否则按 OK 用 text。命中任一分支都弹屏内 notice（装机诊断免 logcat）。

var _fired_id   = (is_struct(async_load) ? async_load[$ "id"]     : async_load[? "id"]);
var _fired_res  = (is_struct(async_load) ? async_load[$ "result"] : async_load[? "result"]);
var _fired_text = (is_struct(async_load) ? async_load[$ "text"]   : async_load[? "text"]);

var _is_ours = (dialog_id != -1) && (is_undefined(_fired_id) || _fired_id == dialog_id);

if (_is_ours) {
    if (is_string(_fired_text) && _fired_res != "Cancel" && _fired_res != "Back") {
        text = string_copy(_fired_text, 1, max_length);
        active = false;
        dialog_id = -1;
        show_debug_message("输入对话框回写成功: text=" + text + " res=" + string(_fired_res));
        show_notice("昵称已输入：" + text + "，请点下方【保存】生效", 120);
    } else {
        active = false;
        dialog_id = -1;
        show_debug_message("输入对话框取消/无文本: res=" + string(_fired_res) + " 文本长度=" + string(string_length(string(_fired_text))));
        show_notice("输入已取消（result=" + string(_fired_res) + "）", 60);
    }
} else {
    show_debug_message("输入对话框回调忽略: dialog_id=" + string(dialog_id) + " fired_id=" + string(_fired_id) + " res=" + string(_fired_res));
}

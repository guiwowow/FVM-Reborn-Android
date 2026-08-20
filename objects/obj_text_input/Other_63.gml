// Async - Dialog 事件：接收 get_string_async 的结果（移动端呼出软键盘改名）。
// .yy 序列化：eventType=7, eventNum=63。
// 回调键（2026 手册权威）：id=请求id，status=true=点确定（false=取消），result=用户输入字符串（空串=无输入）。
// 注意：旧版独立的 "text" 键已移除，结果就在 result；result 不是按钮名，不能当 "OK"/"Cancel" 判断！

var _fired_id   = (is_struct(async_load) ? async_load[$ "id"]     : async_load[? "id"]);
var _fired_stat = (is_struct(async_load) ? async_load[$ "status"] : async_load[? "status"]);
var _fired_res  = (is_struct(async_load) ? async_load[$ "result"] : async_load[? "result"]);

// status 有值即视为确定（老运行时缺失时保守按确定处理）
var _is_ok  = is_undefined(_fired_stat) || (_fired_stat != 0 && _fired_stat != false);
var _is_ours = (dialog_id != -1) && (is_undefined(_fired_id) || _fired_id == dialog_id);

if (_is_ours) {
    if (_is_ok && is_string(_fired_res) && string_length(_fired_res) > 0) {
        text = string_copy(_fired_res, 1, max_length);
    }
    active = false;
    dialog_id = -1;
    show_debug_message("输入对话框回调: id=" + string(_fired_id) + " status=" + string(_fired_stat) + " result=" + string(_fired_res) + " 回写text=" + text);
}



// Async - Dialog 事件：接收 get_string_async 的系统输入对话框结果（移动端呼出软键盘）。
// .yy 序列化：eventType=7, eventNum=63（项目既有范例 obj_edit_menu/Other_63.gml、
// obj_update_checker_btn/Other_62.gml 用 async_load 读回调）。
// 本版“全能”处理：先展开 async_load 全部键值（ds_map/struct 兼容），再自动挑出文本候选回写——
// 只要 result 不是明确 Cancel/Back 且能找到字符串值，就回写输入框（先让它能用）；
// 失败时把完整 dump 弹屏，用于锁定真实键名。屏内 notice 免 logcat。

function __dump_async_load() {
    var _out = "";
    if (is_struct(async_load)) {
        var _names = struct_get_names(async_load);
        for (var i = 0; i < array_length(_names); i++) {
            var _k = _names[i];
            var _v = async_load[$ _k];
            if (is_struct(_v) || is_array(_v)) { _out += _k + "=[obj],"; }
            else { _out += _k + "=" + string(_v) + ","; }
        }
    } else {
        var _k2 = ds_map_find_first(async_load);
        while (!is_undefined(_k2)) {
            var _v2 = async_load[? _k2];
            if (is_struct(_v2) || is_array(_v2)) { _out += _k2 + "=[obj],"; }
            else { _out += _k2 + "=" + string(_v2) + ","; }
            _k2 = ds_map_find_next(async_load, _k2);
        }
    }
    return _out;
}

function __pick_text() {
    var _out = undefined;
    if (is_struct(async_load)) {
        var _names = struct_get_names(async_load);
        for (var i = 0; i < array_length(_names); i++) {
            var _k = _names[i];
            var _v = async_load[$ _names[i]];
            if (is_string(_v) && string_length(_v) >= 1 && _v != "OK" && _v != "Cancel" && _v != "Back"
                && _k != "id" && _k != "result" && _k != "status") {
                return _v;
            }
        }
    } else {
        var _k2 = ds_map_find_first(async_load);
        while (!is_undefined(_k2)) {
            var _k = _k2;
            var _v = async_load[? _k2];
            if (is_string(_v) && string_length(_v) >= 1 && _v != "OK" && _v != "Cancel" && _v != "Back"
                && _k != "id" && _k != "result" && _k != "status") {
                return _v;
            }
            _k2 = ds_map_find_next(async_load, _k2);
        }
    }
    return _out;
}

var _fired_id  = (is_struct(async_load) ? async_load[$ "id"]     : async_load[? "id"]);
var _fired_res = (is_struct(async_load) ? async_load[$ "result"] : async_load[? "result"]);
var _dump      = __dump_async_load();

var _is_ours = (dialog_id != -1) && (is_undefined(_fired_id) || _fired_id == dialog_id);

if (_is_ours) {
    var _cancel = (_fired_res == "Cancel" || _fired_res == "Back");
    if (!_cancel) {
        var _cand = __pick_text();
        if (is_string(_cand) && string_length(_cand) >= 1) {
            text = string_copy(_cand, 1, max_length);
            active = false;
            dialog_id = -1;
            show_debug_message("昵称回写成功 text=" + text + " dump=" + _dump);
            show_notice("昵称已输入：" + text + "，请点【保存】生效", 120);
        } else {
            active = false;
            dialog_id = -1;
            show_debug_message("回调无文本候选 dump=" + _dump);
            show_notice("回调无文本数据：" + string_copy(_dump, 1, 90), 120);
        }
    } else {
        active = false;
        dialog_id = -1;
        show_debug_message("输入已取消 res=" + string(_fired_res) + " dump=" + _dump);
        show_notice("已取消（result=" + string(_fired_res) + "）数据：" + string_copy(_dump, 1, 200), 120);
    }
} else {
    show_debug_message("输入对话框回调忽略: dialog_id=" + string(dialog_id) + " fired_id=" + string(_fired_id) + " dump=" + _dump);
}


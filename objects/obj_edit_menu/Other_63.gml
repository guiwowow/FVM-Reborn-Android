// Async - Dialog 事件：处理 get_save_filename / get_open_filename 结果（安卓）
var _pending = global.file_dialog_pending;
global.file_dialog_pending = "";
if (_pending == "") exit;

var _event_type = async_load[? "event_type"];
var _result = async_load[? "result"];
var _path = async_load[? "path"];
{
	var _fh = file_text_open_append(working_directory + "debug_save.log");
	file_text_write_string(_fh, "DialogAsync: event=" + string(_event_type) + " pending=" + _pending + " result=" + string(_result) + " path=" + string(_path) + "\n");
	file_text_close(_fh);
}

if (_result != 1 || _path == "") {
    show_message_async("已取消")
    exit;
}

if (_pending == "export") {
    var _src = working_directory + "saves/save" + string(global.save_slot) + ".json";
    if (file_copy(_src, _path)) {
        show_message_async("存档已导出到所选位置")
    } else {
        show_message_async("导出失败")
    }
} else if (_pending == "import") {
    var _save_dir = working_directory + "saves";
    if (!directory_exists(_save_dir)) {
        directory_create(_save_dir)
    }
    var _dst = _save_dir + "/save" + string(global.save_slot) + ".json";
    if (file_copy(_path, _dst)) {
        load_file(global.save_slot)
        show_message_async("导入存档成功")
    } else {
        show_message_async("导入失败，文件可能无法读取")
    }
}


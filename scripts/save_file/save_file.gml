/// @function save_file()
/// @desc 将全局变量global.save_data保存到存档文件中
function save_file() {
    // 将数据转换为JSON字符串
    var json_string = json_stringify(global.save_data);
    
    // 打开文件进行写入
    var file = file_text_open_write("save.json");
    if (file == -1) {
        show_debug_message("无法创建存档文件!");
        return false;
    }
    
    // 写入数据
    file_text_write_string(file, json_string);
    file_text_close(file);
    
    show_debug_message("存档保存成功!");
    return true;
}
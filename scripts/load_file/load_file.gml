/// @function load_file()
/// @desc 加载存档文件到全局变量global.save_data中
function load_file() {
    // 检查存档文件是否存在
    if (!file_exists("save.json")) {
        // 如果存档不存在，创建默认存档数据
        global.save_data = {
            "version": 1.0,
            "player": {
                "gold": 0,
                "level": 1,
                "experience": 0
            },
            "unlocked_cards": [
                {"id": "small_fire", "level": 1, "shape": 0},
                {"id": "xiao_long_bao", "level": 1, "shape": 0}
            ],
            "completed_levels": [],
            "inventory": [],
            "unlocked_items": {
                "max_card_level": 1,
                "max_skill_level": 0,
                "max_gem_level": 0
            },
            "unlocked_weapons": [
                {"id": "long_bao_gun"}
            ]
        };
        
        // 保存默认存档
        save_file();
        return true;
    }
    
    // 打开存档文件
    var file = file_text_open_read("save.json");
    if (file == -1) {
        show_debug_message("无法打开存档文件!");
        return false;
    }
    
    // 读取文件内容
    var json_string = "";
    while (!file_text_eof(file)) {
        json_string += file_text_read_string(file);
        file_text_readln(file);
    }
    file_text_close(file);
    
    // 解析JSON字符串
    try {
        global.save_data = json_parse(json_string);
        show_debug_message("存档加载成功!");
        return true;
    } catch(e) {
        show_debug_message("存档解析错误: " + string(e));
        return false;
    }
}
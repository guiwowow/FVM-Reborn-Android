/// @function load_file()
/// @desc 加载存档文件到全局变量global.save_data中
function load_file() {
	var file_path = working_directory + "/saves/save.json"
    // 检查存档文件是否存在
    if (!file_exists(file_path)) {
        // 如果存档不存在，创建初始存档数据
        reset_file()
        return true;
    }
    
    // 打开存档文件
    var file = file_text_open_read(file_path);
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

function reset_file(){
	//重置到初始存档
	global.save_data = {
            "version": 1.0,
            "player": {
                "gold": 0,
                "level": 1,
                "experience": 0,
				"name":"Player",
				"total_time":0
            },
            "unlocked_cards": [
				
                {"id": "small_fire", "level": 0, "shape": 0,"skill":0},
				{"id": "toast_bread", "level": 0, "shape": 0,"skill":0},
				{"id": "xiao_long_bao", "level": 0, "shape": 0,"skill":0},
				{"id": "flour_sack", "level": 0, "shape": 0,"skill":0}
            ],
            "completed_levels": [],
            "inventory": [],
            "unlocked_items": {
                "max_card_level": 0,
                "max_skill_level": 0,
                "max_gem_level": 0,
				"max_slot":5,
				"max_shape":[]
            },
            "unlocked_weapons": [
                {"id": "long_bao_gun"}
            ],
			"unlocked_gems":[
				{"id":"attack_gem","level":0}
			],
			"equipped_items":{
				"main_weapon":{
					"id":"long_bao_gun",
					"gems":[{"id":"attack_gem","level":0},{},{}]
				},
				"secondary_weapon":{
					"id":"",
					"gems":[{},{},{}]
				},
				"super_weapon":{
					"id":"",
					"gems":[]
				}
			},
			"saved_decks":[
				{"name":"卡组1","card_id":[]},
				{"name":"卡组2","card_id":[]},
				{"name":"卡组3","card_id":[]},
				{"name":"卡组4","card_id":[]},
				{"name":"卡组5","card_id":[]},
				{"name":"卡组6","card_id":[]} 
			]
        };
	save_file()
}
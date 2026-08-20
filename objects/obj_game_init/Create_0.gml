function init_native_log() {
    var _local_log_file = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\native\\latest.log")
	var _error_code = native_set_native_log_file_path(_local_log_file)
	if (_error_code != 0) {
        global.native_util.show_error(_error_code, "设置日志路径失败")
	}

}

function move_files () {
    var _local_folder = global.native_util.get_path_in_local_appdata("\\FVM_Reborn")
    var _saves_old = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\美食大战老鼠_重生\\saves")
    var _saves_new = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\saves")
    var _save_folder_new_exists = native_folder_exists(_saves_new)
    var _save_folder_old_exists = native_folder_exists(_saves_old)
    if ((_save_folder_new_exists == 0) && (_save_folder_old_exists == 1)) {
        var _copy_result = native_copy_folder(_saves_old, _local_folder)
        if (_copy_result == 0) {
            show_message_async("存档已自动迁移到[" + _saves_new + "]")
        } else {
            global.native_util.show_error(_copy_result, "存档迁移失败")
        }
    }

    var _local_laboratory = global.native_util.transfer_path_to_windows(working_directory + "laboratory")
    var _local_laboratory_exists = native_folder_exists(_local_laboratory)
    if (_local_laboratory_exists == 1) {
        var _lab_copy_result = native_copy_folder(_local_laboratory, _local_folder)
        if (_lab_copy_result != 0) {
            global.native_util.show_error(_lab_copy_result, "实验室目录迁移失败")
        } else {
            var _lab_delete_result = native_delete_folder(_local_laboratory)
            if (_lab_delete_result != 0) {
                global.native_util.show_error(_lab_delete_result, "旧实验室目录删除失败")
            }
        }
    }
}

/// @description 非 Windows 平台：把 datafiles/laboratory 内置关卡复制进可写沙盒
/// （安卓 working_directory 只读，实验室列表扫描相对目录 laboratory/，必须落到沙盒）
function lab_delete_recursive_files(_path) {
    if (!directory_exists(_path)) return
    var _item = file_find_first(_path + "/*", fa_directory | fa_archive | fa_readonly)
    var _dirs = []
    var _files = []
    while (_item != "") {
        if (_item != "." && _item != "..") {
            var _full = _path + "/" + _item
            if (directory_exists(_full)) {
                array_push(_dirs, _full)
            } else {
                array_push(_files, _full)
            }
        }
        _item = file_find_next()
    }
    file_find_close()
    for (var i = 0; i < array_length(_files); i++) {
        file_delete(_files[i])
    }
    for (var i = 0; i < array_length(_dirs); i++) {
        lab_delete_recursive_files(_dirs[i])
    }
}

function install_bundled_lab_stages () {
    var _base = string_replace_all(working_directory, "\\", "/")
    if (string_char_at(_base, string_length(_base)) != "/") {
        _base += "/"
    }
    var _src = _base + "laboratory"
    var _marker = "laboratory/.installed_v5"
    // 清理旧版残留：历史版本用中文/空格文件名（安卓沙盒 UTF 处理不稳 → 乱码且 file_exists 失配）。
    // 本布局 v4 全 ASCII 且水关资源平铺到 laboratory 根级（v3 子目录在安卓 file_find 递归/复制失配，
    // 报 File not found: laboratory/water_and_fire_2nd_hard.json）。首次安装时递归清空树再复制新副本。
    if (!file_exists(_marker)) {
        if (directory_exists("laboratory")) {
            lab_delete_recursive_files("laboratory")
            var _old = [
                "三界花园.json", "勇士金刚.json",
                "water and fire 2nd hard/water and fire 2nd hard.json",
                "water and fire 2nd hard/water and fire 2nd.png",
                "water and fire 2nd hard/cross-server night.ogg",
                "water and fire 2nd hard/cross-server night boss.ogg",
                "water_and_fire_2nd_hard.json",
                "water_and_fire_2nd_hard/water_and_fire_2nd_hard.json",
                "water_and_fire_2nd_hard/water_and_fire_2nd.png",
                "water_and_fire_2nd_hard/cross_server_night.ogg",
                "water_and_fire_2nd_hard/cross_server_night_boss.ogg"
            ]
            for (var i = 0; i < array_length(_old); i++) {
                file_delete("laboratory/" + _old[i])
            }
        }
        directory_create("laboratory")
        var _f = file_text_open_write(_marker)
        file_text_write_string(_f, "v5")
        file_text_close(_f)
    }
    // 策略1：整树递归复制（依赖资产目录枚举；安卓 APK assets 可能不可枚举）——仅首装尝试，
    // 后续启动跳过：working_directory/laboratory 此时就是沙盒本体，整树自拷会递归/自毁
    var _tree_ok = false
    if (!file_exists(_marker)) {
        _tree_ok = native_copy_folder(_src, "laboratory")
    }
    // 策略2：显式逐文件复制（不依赖枚举）：src 直连路径 + 相对路径 buffer 兜底。
    // 已有非空 dst 一律跳过（下文循环内注释：working_directory 源会命中沙盒本体，自拷贝清零是
    // “第二次打开全 Empty 4100”的根因）；仅 dst 缺失/0 字节时从资产重建。
    var _known = [
        // 既有 8 关
        "baiguiyexing.json", "shendianjihui.json", "tower-7-2_hard.json", "tower-9-2_hard.json",
        "sanjiehuayuan.json", "arctic_bay_turbulence_warrior.json", "yongshijingang.json",
        "water_and_fire_2nd_hard.json",
        // 既有资源（cross_server_night*.ogg 被新增 11 关内容复用）
        "water_and_fire_2nd.png", "cross_server_night.ogg", "cross_server_night_boss.ogg",
        // 24 个新增关卡 json（v5 批量：每文件夹一关）
        "bar_secret_area.json", "bar_secret_area_hard.json", "cooperation_starts.json",
        "hot_hell_1st.json", "hot_hell_1st_hard.json", "hot_hell_2nd.json", "hot_hell_2nd_hard.json",
        "nightmare_sky_1st.json", "nightmare_sky_1st_hard.json", "nightmare_sky_2nd.json", "nightmare_sky_2nd_hard.json",
        "sweet_island.json", "sweet_island_hard.json",
        "voodoo_research_labortory_1st.json", "voodoo_research_labortory_1st_hard.json",
        "voodoo_research_labortory_2nd.json", "voodoo_research_labortory_2nd_hard.json",
        "wait_for_windfalls.json", "wait_for_windfalls_hard.json", "wait_for_windfalls_2.json", "wait_for_windfalls_2_hard.json",
        "water_and_fire_1st.json", "water_and_fire_1st_hard.json", "water_and_fire_2nd.json",
        // 新增资源（内容去重：同内容多关共享一份 flat 文件）
        "bar_secret_area.png", "cooperation_1.ogg", "cooperation_2.ogg", "cooperation_3.png", "cooperation_4.ogg",
        "cross_server_daytime.ogg", "cross_server_daytime_boss.ogg",
        "hot_hell.png", "nightmare_sky_1st.png", "nightmare_sky_2nd.png",
        "sweet_island.png", "voodoo_research_labortory_1st.png", "voodoo_research_labortory_2nd.png",
        "wait_for_windfalls.png", "wait_for_windfalls_2.png",
        "wait_for_windfalls_boss.ogg", "wait_for_windfalls_daytime.ogg", "wait_for_windfalls_night.ogg",
        "water_and_fire_1st.png", "water_and_fire_2nd_normal.png"
    ]
    var _copied = 0
    for (var i = 0; i < array_length(_known); i++) {
        var _rel = _known[i]
        var _dst = "laboratory/" + _rel
        // 已有且非空 → 跳过，绝不覆盖。**不能用 file_size(_dst)**：该名在本 VM 是内置实例变量，
        // 当函数读会崩 "Variable obj_game_init.file_size(...) not set before reading it"。
        // 改用 file_text_eof 判空：文件不存在/打不开/打开即 EOF（空）→ 需要重建。
        var _need_copy = !file_exists(_dst)
        if (!_need_copy) {
            var _t = file_text_open_read(_dst)
            if (_t < 0) {
                _need_copy = true
            } else {
                _need_copy = file_text_eof(_t)
                file_text_close(_t)
            }
        }
        if (!_need_copy) {
            continue
        }
        var _ok = false
        if (file_exists(_src + "/" + _rel)) {
            _ok = file_copy(_src + "/" + _rel, _dst)
        }
        if (!_ok && file_exists(_rel)) {
            // 相对路径命中资产（安卓读 included files 走虚拟文件系统）→ buffer 读资产、写沙盒
            var _dir = filename_dir(_dst)
            if (_dir != "" && !directory_exists(_dir)) {
                directory_create(_dir)
            }
            var _buf = buffer_load(_rel)
            if (buffer_exists(_buf)) {
                buffer_save(_buf, _dst)
                buffer_delete(_buf)
                _ok = file_exists(_dst)
            }
        }
        if (_ok) {
            _copied++
        } else {
            show_debug_message("内置关卡安装失败: " + _rel)
        }
    }
    // 白名单清理：删掉沙盒根级不在 _known 里的 json（防旧版本残留/半截文件被扫描到导致读取报错）
    var _delete_count = 0
    if (directory_exists("laboratory")) {
        var _it2 = file_find_first("laboratory/*.json", fa_archive | fa_readonly)
        while (_it2 != "") {
            var _in_known = false
            for (var i = 0; i < array_length(_known); i++) {
                if (_known[i] == _it2) {
                    _in_known = true
                    break
                }
            }
            if (!_in_known) {
                file_delete("laboratory/" + _it2)
                _delete_count++
            }
            _it2 = file_find_next()
        }
        file_find_close()
    }
    // 诊断：统计沙盒根目录 json 数量
    var _count = 0
    if (directory_exists("laboratory")) {
        var _it = file_find_first("laboratory/*.json", fa_archive | fa_readonly)
        while (_it != "") {
            _count++
            _it = file_find_next()
        }
        file_find_close()
    }
    show_debug_message("内置实验室安装: tree=" + string(_tree_ok) + " 逐文件=" + string(_copied) + " 沙盒json=" + string(_count) + " 清理=" + string(_delete_count))
}

global.level = 1
global.menu_screen = true
global.map_name = "美味岛"
global.map_id = "delicious_town"
global.level_id = ""
global.level_file = {}
global.level_name = "曲奇岛"
global.level_data = {}
global.debug = 1   //【调试构建】全局调试开关：启用商店免金币/放置无视规则/V键跳波/战斗右上“召唤BOSS”按钮。验收后改回 0
global.laboretory_room = false
global.game_version = "2.3.0"
global.tower_level_click = false
Music_Init()

global.laboratory_manager = new LaboratoryManager()
global.laboratory_manager.init()
global.gui_stack = new GuiStack()
global.native_util = new NativeUtil()
global.file_dialog_pending = ""

// 锁帧 60（安卓高刷屏下 game_set_speed 可能失效，配合 obj_touch_control 的 sleep 补偿）
game_set_speed(60, gamespeed_fps)

// 触屏适配控制器（持久，跨房间常驻；双指取消/虚拟按键）
if (!instance_exists(obj_touch_control)) {
    instance_create_depth(0, 0, -100000, obj_touch_control)
}

init_native_log()
if (os_type == os_windows) {
    move_files()
} else {
    install_bundled_lab_stages()
}

// 初始化全局键位映射
global.keybind_map = ds_map_create();
// 定义所有快捷键配置
global.keybind_config = [
    {"name": "铲子", "default1": vk_tab, "tooltip": ""},
    {"name": "卡槽1", "default1": ord("1"), "tooltip": ""},
    {"name": "卡槽2", "default1": ord("2"), "tooltip": ""},
    {"name": "卡槽3", "default1": ord("3"), "tooltip": ""},
    {"name": "卡槽4", "default1": ord("4"), "tooltip": ""},
    {"name": "卡槽5", "default1": ord("5"), "tooltip": ""},
    {"name": "卡槽6", "default1": ord("6"), "tooltip": ""},
    {"name": "卡槽7", "default1": ord("7"), "tooltip": ""},
    {"name": "卡槽8", "default1": ord("8"), "tooltip": ""},
    {"name": "卡槽9", "default1": ord("9"), "tooltip": ""},
    {"name": "卡槽10", "default1": ord("0"), "tooltip": ""},
    {"name": "卡槽11", "default1": ord("Q"), "tooltip": ""},
    {"name": "卡槽12", "default1": ord("W"), "tooltip": ""},
	{"name": "卡槽13", "default1": ord("E"), "tooltip": ""},
    {"name": "卡槽14", "default1": ord("R"), "tooltip": ""},
    {"name": "卡槽15", "default1": ord("T"), "tooltip": ""},
    {"name": "卡槽16", "default1": ord("Y"), "tooltip": ""},
    {"name": "卡槽17", "default1": ord("A"), "tooltip": ""},
    {"name": "卡槽18", "default1": ord("S"), "tooltip": ""},
	{"name": "卡槽19", "default1": ord("D"), "tooltip": ""},
    {"name": "卡槽20", "default1": ord("F"), "tooltip": ""},
    {"name": "卡槽21", "default1": ord("G"), "tooltip": ""}
];
//window_set_caption("FVM:Reborn")
// 初始化全局设置（如果不存在配置文件）
if (!file_exists("config.ini")) {
    ini_open("config.ini");
    ini_write_bool("settings", "screen_shake", true);
    ini_write_bool("settings", "screen_flash", true);
	ini_write_bool("settings", "fullscreen", false);
	ini_write_real("settings", "music_volume", 0.7);
	ini_write_real("settings", "sound_volume", 0.7);
	ini_write_bool("settings", "quick_placement", false);
	ini_write_bool("settings", "replace_placement", false);
	ini_write_bool("settings", "card_hpbar", false);
	ini_write_bool("settings", "enemy_hpbar", false);
	ini_write_bool("settings", "tex_fliter", true);
	ini_write_real("settings", "difficulty", 1)
	ini_write_bool("settings", "borderless_window", true);
	ini_write_real("settings", "save_slot", 0)
	ini_write_bool("settings", "lose_focus_pause", true)
	ini_write_bool("settings", "cardslow_enabled", true)
	ini_open("config.ini");
    for (var i = 0; i < array_length(global.keybind_config); i++) {
        var kb = global.keybind_config[i];
        ini_write_real("keybinds", kb.name, kb.default1);
    }
    ini_close();
}
// 初始化全局音量变量
global.music_volume_before_mute = 0.7;
global.sound_volume_before_mute = 0.7;

// 读取配置到全局变量
ini_open("config.ini");
global.screen_shake = ini_read_bool("settings", "screen_shake", true);
global.screen_flash = ini_read_bool("settings", "screen_flash", true);
global.fullscreen = ini_read_bool("settings", "fullscreen", false);
global.music_volume = ini_read_real("settings", "music_volume", 0.7);
global.sound_volume = ini_read_real("settings", "sound_volume", 0.7);
global.quick_placement = ini_read_bool("settings", "quick_placement", false);
global.replace_placement = ini_read_bool("settings", "replace_placement", false);
global.card_hpbar = ini_read_bool("settings", "card_hpbar", false);
global.enemy_hpbar = ini_read_bool("settings", "enemy_hpbar", false);
global.tex_fliter = ini_read_bool("settings", "tex_fliter", true);
global.difficulty = ini_read_real("settings", "difficulty", 1)
global.borderless_window = ini_read_bool("settings", "borderless_window", true);
global.save_slot = ini_read_real("settings", "save_slot", 0)
global.lose_focus_pause = ini_read_bool("settings", "lose_focus_pause", true);
global.cardslow_enabled = ini_read_bool("settings", "cardslow_enabled", true);
for (var i = 0; i < array_length(global.keybind_config); i++) {
	    var kb = global.keybind_config[i];
	    var key_val = ini_read_real("keybinds", kb.name, kb.default1);
	    global.keybind_map[? kb.name] = key_val;
}



ini_close();
audio_group_set_gain(music,global.music_volume,0)
audio_group_set_gain(sound,global.sound_volume,0)
window_set_fullscreen(global.fullscreen)
gpu_set_tex_filter(global.tex_fliter)
window_enable_borderless_fullscreen(global.borderless_window)

// 设置初始静音状态
global.music_volume_before_mute = global.music_volume > 0 ? global.music_volume : 0.7;
global.sound_volume_before_mute = global.sound_volume > 0 ? global.sound_volume : 0.7;

show_debug_message(working_directory)


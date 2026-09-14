///
#macro kMapApiBase "https://fvm-reb.top"

function OnlineMapItem() constructor {
    self.id = ""
    self.title = ""
    self.author = ""
    self.description = ""
    self.detail = ""
    self.difficulty = ""
    self.downloads = 0
    self.enemy_types = ""
    self.special_mechanics = ""
    self.image = ""
    self.map_file = ""
    self.upload_time = ""
    self.timestamp = 0
    self.author_desc = ""
    /// @type {Asset.GMSprite|Undefined}
    self.thumb_sprite = undefined
    self.downloaded = false
}

function MapDownloadManager() constructor {
    self.file_util = new FileUtil()
    self.owned_sprites = {}

    /// @returns {String}
    // 安卓：实验室关卡列表扫描的是沙盒**相对**目录 laboratory/（kCustomStageFolder，
    // 见 LaboratoryManager:138 find_files_with_extension_recursively）。
    // 下载必须落在同一棵树里，否则下载完列表永远看不到（原实现走 LOCALAPPDATA 绝对路径，
    // 安卓上那是 working_directory + "\FVM_Reborn\laboratory"，与扫描树不是同一处）。
    static laboratory_appdata = function() {
        return kCustomStageFolder
    }

    /// @param {String} _title
    /// @returns {String}
    static sanitize_title = function(_title) {
        var _name = string(_title)
        var _illegal = ["\\", "/", ":", "*", "?", "\"", "<", ">", "|"]
        for (var i = 0; i < array_length(_illegal); i++) {
            _name = string_replace_all(_name, _illegal[i], "_")
        }
        _name = string_trim(_name)
        if (_name == "") {
            _name = "untitled"
        }
        return _name
    }

    /// @description 把标题转成**纯 ASCII** 目录名（安卓沙盒对中文路径不稳，见 ascii_flatten 注释）。
    /// 只保留 [0-9A-Za-z_-]，截断 24 字符，并附一个短哈希保证唯一（纯中文标题的 ASCII 残留会重复）。
    /// @param {String} _title
    /// @returns {String}
    static ascii_dir_name = function(_title) {
        var _s = string(_title)
        var _n = string_length(_s)
        var _out = ""
        for (var i = 1; i <= _n; i++) {
            var _c = string_char_at(_s, i)
            var _o = ord(_c)
            if ((_o >= 48 and _o <= 57) or (_o >= 65 and _o <= 90) or (_o >= 97 and _o <= 122) or _c == "-" or _c == "_") {
                _out += _c
            }
        }
        if (string_length(_out) > 24) {
            _out = string_copy(_out, 1, 24)
        }
        var _h = 0
        for (var i = 1; i <= _n; i++) {
            _h = (_h * 31 + ord(string_char_at(_s, i))) mod 1000000007
        }
        return "map_" + _out + "_" + string(_h)
    }

    /// @param {String} _title
    /// @returns {String}
    static get_download_folder = function(_title) {
        return self.laboratory_appdata() + "/download/" + self.ascii_dir_name(_title)
    }

    /// @param {String} _title
    /// @returns {String}
    static get_working_download_folder = function(_title) {
        return self.get_download_folder(_title)
    }

    /// @description 检测 zip 第一个条目的文件名**是否不是合法 UTF-8**（旧版工具按 GBK/代码页存名）。
    /// 实测（全站 78 包扫描）：74 个名字是合法 UTF-8（安卓可解）；2 个是 GBK
    /// （「星渊岛」「魔塔蛋糕50层」——安卓 zip_unzip 拿 GBK 字节当路径会写盘失败，
    /// 即使包内带 Info-ZIP 的 0x7075 Unicode 路径扩展也没用，因为它被忽略）。
    /// 注意：**不能**用 general purpose flag 的 0x0800 位判断 —— 实测不可靠（会误报 46 个）。
    /// @param {String} _zip_path
    /// @returns {Bool}
    static zip_name_is_non_utf8 = function(_zip_path) {
        var _bad = false
        var _buf = buffer_load(_zip_path)
        if (_buf < 0) {
            return false
        }
        var _size = buffer_get_size(_buf)
        if (_size > 40 and buffer_peek(_buf, 0, buffer_u8) == 0x50 and buffer_peek(_buf, 1, buffer_u8) == 0x4B
            and buffer_peek(_buf, 2, buffer_u8) == 0x03 and buffer_peek(_buf, 3, buffer_u8) == 0x04) {
            var _nlen = buffer_peek(_buf, 26, buffer_u8) | (buffer_peek(_buf, 27, buffer_u8) << 8)
            var _i = 0
            while (_i < _nlen and (30 + _i) < _size) {
                var _b = buffer_peek(_buf, 30 + _i, buffer_u8)
                var _need = -1
                if (_b < 0x80) {
                    _need = 0
                } else if (_b >= 0xC2 and _b <= 0xDF) {
                    _need = 1
                } else if (_b >= 0xE0 and _b <= 0xEF) {
                    _need = 2
                } else if (_b >= 0xF0 and _b <= 0xF4) {
                    _need = 3
                }
                if (_need < 0) {
                    _bad = true
                    break
                }
                var _j = 1
                while (_j <= _need) {
                    if ((30 + _i + _j) >= _size) {
                        _bad = true
                        break
                    }
                    var _c = buffer_peek(_buf, 30 + _i + _j, buffer_u8)
                    if (_c < 0x80 or _c > 0xBF) {
                        _bad = true
                        break
                    }
                    _j++
                }
                if (_bad) {
                    break
                }
                _i += 1 + _need
            }
        }
        buffer_delete(_buf)
        return _bad
    }

    /// @param {String} _title
    /// @returns {Real} 该地图可用于列表扫描的关卡 json 数（0 = 未成功下载）
    /// 优先数**根级**（提升上去的那份，列表的扫描必然能看到），没有则回退数下载目录。
    static count_stage_jsons = function(_title) {
        var _prefix = self.ascii_dir_name(_title) + "_"
        var _root = string_replace_all(self.laboratory_appdata(), "\\", "/")
        var _n = 0
        if (directory_exists(_root)) {
            var _item = file_find_first(_root + "/*.json", fa_archive | fa_readonly)
            while (_item != "") {
                if (string_starts_with(_item, _prefix)) {
                    _n++
                }
                _item = file_find_next()
            }
            file_find_close()
        }
        if (_n > 0) {
            return _n
        }
        var _dir = self.get_download_folder(_title)
        if (!directory_exists(_dir)) {
            return 0
        }
        return array_length(self.file_util.find_files_with_extension_recursively(_dir, ".json"))
    }

    /// @description 把下载目录里（已改名成 ASCII 的）关卡 json「提升」一份到实验室**根级**，
    /// 并把其中的资源引用改写成相对根级的路径（download/<dir>/xxx）。
    /// 动机：关卡列表用 find_files_with_extension_recursively(kCustomStageFolder, ".json") **递归**扫描，
    /// 而安卓上 file_find 递归子目录会失配（工程历史：v3 子目录布局报 File not found → 内置关卡
    /// 当年因此改成根级 ASCII 平铺）。让 json 出现在根级后，只依赖第一层列举即可被扫到。
    /// @returns {Real} 提升到根级的 json 数
    static promote_jsons_to_root = function(_title, _dest, _jsons, _map) {
        var _root = string_replace_all(self.laboratory_appdata(), "\\", "/")
        var _dest2 = string_replace_all(string(_dest), "\\", "/")
        var _rel = string_replace(_dest2, _root + "/", "")
        var _prefix = self.ascii_dir_name(_title) + "_"
        var _promoted = 0
        for (var i = 0; i < array_length(_jsons); i++) {
            var _jp = string_replace_all(string(_jsons[i]), "\\", "/")
            var _f = file_text_open_read(_jp)
            if (_f < 0) {
                continue
            }
            var _txt = ""
            while (!file_text_eof(_f)) {
                _txt += file_text_read_string(_f)
                file_text_readln(_f)
            }
            file_text_close(_f)
            _txt = string_replace_all(_txt, chr(0), "")
            // 资源名前面补上 "download/<dir>/"，使引用相对根级仍能命中
            for (var k = 0; k < array_length(_map); k++) {
                _txt = string_replace_all(_txt, _map[k][1], _rel + "/" + _map[k][1])
            }
            var _base = string_replace(_jp, _dest2 + "/", "")
            var _w = file_text_open_write(_root + "/" + _prefix + _base)
            if (_w < 0) {
                continue
            }
            file_text_write_string(_w, _txt)
            file_text_close(_w)
            _promoted++
        }
        return _promoted
    }

    /// @param {String} _title
    /// @returns {Bool}
    /// 以「确实解出了关卡 json」为准：仅目录存在不代表解压成功（解压前会先建目录）。
    static is_downloaded = function(_title) {
        return self.count_stage_jsons(_title) > 0
    }

    /// @description 把 _dir（含各级子目录）下的所有文件平铺进 _root，并改成 ASCII 文件名。
    /// 安卓沙盒对**中文/含空格**文件名处理不稳（file_find 乱码 → file_exists 失配），
    /// 内置关卡当年正是为此全改成 ASCII 平铺的（见 install_bundled_lab_stages 的历史注释）；
    /// 下载包（实测条目名如「水火12~15星.png」「old-cross-server night boss.ogg」）必须同样处理。
    /// @param {Array<Array<String>>} _map 收件数组：累积 [[旧名, 新名], ...]（GML 数组按引用传）
    /// @returns {Real} 移动+改名过的文件数
    static ascii_flatten = function(_root, _dir, _map) {
        var _root2 = string_replace_all(string(_root), "\\", "/")
        var _dir2 = string_replace_all(string(_dir), "\\", "/")
        if (!directory_exists(_dir2)) {
            return 0
        }
        var _item = file_find_first(_dir2 + "/*", fa_directory | fa_archive | fa_readonly)
        var _files = []
        var _subs = []
        while (_item != "") {
            if (_item != "." && _item != "..") {
                var _full = _dir2 + "/" + _item
                if (directory_exists(_full)) {
                    array_push(_subs, _full)
                } else {
                    array_push(_files, _item)
                }
            }
            _item = file_find_next()
        }
        file_find_close()
        var _moved = 0
        for (var i = 0; i < array_length(_files); i++) {
            var _old = _files[i]
            // filename_ext 带前导点（".png"），先去点，否则会拼出 "map_file_0..png"
            var _ext = string_lower(string_replace_all(filename_ext(_old), ".", ""))
            var _new = "map_file_" + string(array_length(_map))
            if (_ext != "") {
                _new += "." + _ext
            }
            var _guard = 0
            while (file_exists(_root2 + "/" + _new) && _guard < 100) {
                _new = "map_file_" + string(array_length(_map)) + "_" + string(_guard) + (_ext != "" ? "." + _ext : "")
                _guard++
            }
            file_copy(_dir2 + "/" + _old, _root2 + "/" + _new)
            file_delete(_dir2 + "/" + _old)
            array_push(_map, [_old, _new])
            _moved++
        }
        for (var i = 0; i < array_length(_subs); i++) {
            _moved += self.ascii_flatten(_root2, _subs[i], _map)
            if (directory_exists(_subs[i])) {
                directory_destroy(_subs[i])
            }
        }
        return _moved
    }

    /// @description 把 json 文本里对旧文件名的引用改写成 ASCII 新名（`.\/旧名` 这种前缀写法天然兼容，
    /// 因为只替换文件名片段）。
    static patch_stage_json = function(_json_path, _map) {
        var _f = file_text_open_read(_json_path)
        if (_f < 0) {
            return false
        }
        var _txt = ""
        while (!file_text_eof(_f)) {
            _txt += file_text_read_string(_f)
            file_text_readln(_f)
        }
        file_text_close(_f)
        _txt = string_replace_all(_txt, chr(0), "")
        // 长名优先替换，避免一个旧名是另一个旧名子串时误替换。
        // 手写插入排序 + 手工拷贝，不依赖 array_sort 比较器重载 / array_copy 的参数形态。
        var _pairs = []
        for (var i = 0; i < array_length(_map); i++) {
            array_push(_pairs, _map[i])
        }
        for (var a = 1; a < array_length(_pairs); a++) {
            var _cur = _pairs[a]
            var _b = a - 1
            while (_b >= 0 and string_length(_pairs[_b][0]) < string_length(_cur[0])) {
                _pairs[_b + 1] = _pairs[_b]
                _b--
            }
            _pairs[_b + 1] = _cur
        }
        for (var i = 0; i < array_length(_pairs); i++) {
            _txt = string_replace_all(_txt, _pairs[i][0], _pairs[i][1])
        }
        var _w = file_text_open_write(_json_path)
        if (_w < 0) {
            return false
        }
        file_text_write_string(_w, _txt)
        file_text_close(_w)
        return true
    }

    /// @param {String} _id
    /// @returns {String}
    static get_thumb_cache_path = function(_id) {
        return self.working_cache_dir("thumbs") + string(_id) + ".png"
    }

    /// @param {String} _id
    /// @param {String} _ext
    /// @returns {String}
    static get_zip_cache_path = function(_id, _ext) {
        if (!string_starts_with(_ext, ".")) {
            _ext = "." + _ext
        }
        return self.working_cache_dir("zips") + string(_id) + _ext
    }

    /// @param {String} _dir
    /// @returns {String}
    static ensure_relative_dir = function(_dir) {
        _dir = string_replace_all(string(_dir), "\\", "/")
        while (string_starts_with(_dir, "/")) {
            _dir = string_delete(_dir, 1, 1)
        }
        if (!string_ends_with(_dir, "/")) {
            _dir += "/"
        }
        var _acc = ""
        var _start = 1
        var _len = string_length(_dir)
        for (var i = 1; i <= _len; i++) {
            if (string_char_at(_dir, i) == "/" || i == _len) {
                var _part = string_copy(_dir, _start, i - _start)
                _start = i + 1
                if (_part == "") {
                    continue
                }
                if (_acc != "") {
                    _acc += "/"
                }
                _acc += _part
                if (!directory_exists(_acc)) {
                    directory_create(_acc)
                }
            }
        }
        return _dir
    }

    /// @param {String} _sub
    /// @returns {String}
    static working_cache_dir = function(_sub) {
        return self.ensure_relative_dir("laboratory/cache/" + _sub)
    }

    /// @param {String} _path
    /// @returns {String}
    static to_windows_path = function(_path) {
        return global.native_util.transfer_path_to_windows(_path)
    }

    /// @param {String} _path
    /// @returns {String}
    static resolve_api_url = function(_path) {
        if (is_undefined(_path) || string(_path) == "") {
            return ""
        }
        _path = string(_path)
        if (string_starts_with(_path, "http://") || string_starts_with(_path, "https://")) {
            return _path
        }
        if (!string_starts_with(_path, "/")) {
            _path = "/" + _path
        }
        return kMapApiBase + _path
    }

    /// @param {String} _map_file
    /// @returns {String}
    static extension_from_map_file = function(_map_file) {
        var _name = filename_ext(string(_map_file))
        if (_name == "") {
            return ".zip"
        }
        return _name
    }

    /// @param {Struct} _json
    /// @param {String} _key
    /// @param {String} _fallback
    /// @returns {String}
    static read_string = function(_json, _key, _fallback) {
        if (!variable_struct_exists(_json, _key)) {
            return _fallback
        }
        var _value = variable_struct_get(_json, _key)
        if (is_undefined(_value) || _value == pointer_null) {
            return _fallback
        }
        return string(_value)
    }

    /// @param {Struct} _json
    /// @param {String} _key
    /// @param {Real} _fallback
    /// @returns {Real}
    static read_real = function(_json, _key, _fallback) {
        if (!variable_struct_exists(_json, _key)) {
            return _fallback
        }
        var _value = variable_struct_get(_json, _key)
        if (is_undefined(_value) || _value == pointer_null || _value == "") {
            return _fallback
        }
        return real(_value)
    }

    /// @param {Struct} _json
    /// @returns {Struct.OnlineMapItem}
    static item_from_json = function(_json) {
        var _item = new OnlineMapItem()
        if (!is_struct(_json)) {
            return _item
        }
        _item.id = self.read_string(_json, "id", "")
        _item.title = self.read_string(_json, "title", "")
        _item.author = self.read_string(_json, "author", "")
        _item.description = self.read_string(_json, "description", "")
        _item.detail = self.read_string(_json, "detail", "")
        _item.difficulty = self.read_string(_json, "difficulty", "")
        _item.downloads = self.read_real(_json, "downloads", 0)
        _item.enemy_types = self.read_string(_json, "enemy_types", "")
        _item.special_mechanics = self.read_string(_json, "special_mechanics", "")
        _item.image = self.read_string(_json, "image", "")
        _item.map_file = self.read_string(_json, "map_file", "")
        _item.upload_time = self.read_string(_json, "upload_time", "")
        _item.timestamp = self.read_real(_json, "timestamp", 0)
        _item.author_desc = self.read_string(_json, "author_desc", "")
        _item.downloaded = self.is_downloaded(_item.title)
        return _item
    }

    /// @param {Array<Struct.OnlineMapItem>} _items
    /// @param {String} _query
    /// @returns {Array<Struct.OnlineMapItem>}
    static filter_items = function(_items, _query) {
        var _q = string_lower(string_trim(string(_query)))
        if (_q == "") {
            return _items
        }
        var _out = []
        for (var i = 0; i < array_length(_items); i++) {
            var _item = _items[i]
            var _name = string_lower(string(_item.title))
            var _author = string_lower(string(_item.author))
            if (string_pos(_q, _name) > 0 || string_pos(_q, _author) > 0) {
                array_push(_out, _item)
            }
        }
        return _out
    }

    /// @param {String} _id
    /// @param {String} _path
    /// @returns {Asset.GMSprite|Undefined}
    static load_thumb_sprite = function(_id, _path) {
        if (file_exists(_path)) {
            var _cached = variable_struct_get(self.owned_sprites, _id)
            if (!is_undefined(_cached) && sprite_exists(_cached)) {
                return _cached
            }
            var _result = self.file_util.load_sprite_from_path(_path)
            if (_result.is_succeed()) {
                variable_struct_set(self.owned_sprites, _id, _result.data)
                return _result.data
            }
        }
        return undefined
    }

    /// @param {String} _title
    /// @returns {Real}
    static delete_download = function(_title) {
        var _code = 0
        // 先删提升到根级的那份 json（否则列表里会留下点进去就失败的僵尸条目）
        var _root = string_replace_all(self.laboratory_appdata(), "\\", "/")
        var _prefix = self.ascii_dir_name(_title) + "_"
        if (directory_exists(_root)) {
            var _it = file_find_first(_root + "/*.json", fa_archive | fa_readonly)
            var _del = []
            while (_it != "") {
                if (string_starts_with(_it, _prefix)) {
                    array_push(_del, _it)
                }
                _it = file_find_next()
            }
            file_find_close()
            for (var i = 0; i < array_length(_del); i++) {
                if (!file_delete(_root + "/" + _del[i])) {
                    _code = -1
                }
            }
        }
        var _folder = self.get_download_folder(_title)
        if (native_folder_exists(_folder) == 1) {
            var _folder_code = native_delete_folder(_folder)
            if (_code == 0) {
                _code = _folder_code
            }
        }
        return _code
    }

    /// @param {String} _zip_path
    /// @param {String} _title
    /// @returns {Real}
    static unzip_to_title = function(_zip_path, _title) {
        var _zip = _zip_path          // 沙盒**相对**路径（zip_unzip 要相对路径，勿再 to_native_absolute）
        var _dest = self.get_download_folder(_title)
        show_debug_message("[OnlineMap] unzip " + _zip + " -> " + _dest)
        global.unzip_diag += " | title=" + string(_title) + " dest=" + _dest
        var _bad_name = self.zip_name_is_non_utf8(_zip)
        global.unzip_diag += " | 名字非UTF8=" + string(_bad_name)
        if (_bad_name) {
            global.unzip_diag += " | 包内文件名为 GBK（非 UTF-8），安卓 zip_unzip 写盘会失败"
            return -3
        }
        var _code = native_unzip_map_file(_zip, _dest)
        if (!directory_exists(_dest)) {
            global.unzip_diag += " | 解压后目标目录不存在";
            return (_code != 0) ? _code : -1
        }
        // 解压结果：平铺 + ASCII 改名（旧名→新名映射），随后改写 json 内引用
        var _map = []
        var _moved = self.ascii_flatten(_dest, _dest, _map)
        var _jsons = self.file_util.find_files_with_extension_recursively(_dest, ".json")
        for (var j = 0; j < array_length(_jsons); j++) {
            self.patch_stage_json(_jsons[j], _map)
        }
        global.unzip_diag += " | 解压码=" + string(_code) + " 平铺改名=" + string(_moved) + " 文件对=" + string(array_length(_map)) + " json=" + string(array_length(_jsons))
        if (array_length(_jsons) <= 0) {
            global.unzip_diag += " | 目标目录里没有 json（解压失败或包内容异常）";
            return (_code != 0) ? _code : -1
        }
        // 提升 json 到实验室根级：列表是**递归**扫描，而安卓上递归子目录会失配（见 promote_jsons_to_root）
        var _promoted = self.promote_jsons_to_root(_title, _dest, _jsons, _map)
        var _root_jsons = self.count_stage_jsons(_title)
        global.unzip_diag += " | 提升根级=" + string(_promoted) + " 根级json=" + string(_root_jsons)
        if (_root_jsons <= 0) {
            global.unzip_diag += " | 根级仍无 json";
            show_debug_message("[OnlineMap] unzip_diag: " + string(global.unzip_diag))
            return (_code != 0) ? _code : -1
        }
        show_debug_message("[OnlineMap] unzip_diag: " + string(global.unzip_diag))
        return 0
    }

    static dispose = function() {
        var _keys = variable_struct_get_names(self.owned_sprites)
        for (var i = 0; i < array_length(_keys); i++) {
            var _spr = variable_struct_get(self.owned_sprites, _keys[i])
            if (sprite_exists(_spr)) {
                sprite_delete(_spr)
            }
        }
        self.owned_sprites = {}
    }
}

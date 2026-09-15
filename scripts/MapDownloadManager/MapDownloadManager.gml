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

    /// @description 从 buffer 的一段字节里**按 UTF-8 解码**成 GML 字符串。
    /// 用途：把 zip 里的原始条目名还原成"json 文本里出现的那种字符串"，供 patch_stage_json 替换引用。
    /// （不能直接用 chr(字节) 累加：高位字节被 chr() 当成码点会重新编码，与 json 里的 UTF-8 字节对不上）
    /// @param {Real} _buf
    /// @param {Real} _off
    /// @param {Real} _len
    /// @returns {String}
    static utf8_name_from_buffer = function(_buf, _off, _len) {
        var _s = ""
        var i = 0
        while (i < _len) {
            var _b = buffer_peek(_buf, _off + i, buffer_u8)
            if (_b < 0x80) {
                _s += chr(_b)
                i += 1
            } else if (_b >= 0xC2 and _b <= 0xDF and (i + 1) < _len) {
                _s += chr(((_b & 0x1F) << 6) | (buffer_peek(_buf, _off + i + 1, buffer_u8) & 0x3F))
                i += 2
            } else if (_b >= 0xE0 and _b <= 0xEF and (i + 2) < _len) {
                _s += chr(((_b & 0x0F) << 12)
                    | ((buffer_peek(_buf, _off + i + 1, buffer_u8) & 0x3F) << 6)
                    | (buffer_peek(_buf, _off + i + 2, buffer_u8) & 0x3F))
                i += 3
            } else if (_b >= 0xF0 and _b <= 0xF4 and (i + 3) < _len) {
                var _cp = ((_b & 0x07) << 18)
                    | ((buffer_peek(_buf, _off + i + 1, buffer_u8) & 0x3F) << 12)
                    | ((buffer_peek(_buf, _off + i + 2, buffer_u8) & 0x3F) << 6)
                    | (buffer_peek(_buf, _off + i + 3, buffer_u8) & 0x3F)
                _s += chr(_cp)
                i += 4
            } else {
                i += 1        // 非法序列（如 GBK 字节）：跳过，该名字本来也匹配不上 json 引用
            }
        }
        return _s
    }

    /// @description 把 zip 的条目名**全部改写成 "<prefix>_file_N.ext"**（纯 ASCII、扁平、无目录）。
    /// **压缩数据原样搬运**：不解压、不需要 inflate、不需要原生库。
    ///
    /// 动机：安卓沙盒对**非 ASCII 文件名**不稳（工程历史："中文/空格文件名 → 乱码且 file_exists 失配"）
    /// → file_find/file_copy/sprite_add/audio_create_stream 全都会失配。
    /// 实测全站 78 包：**40+ 个含非 ASCII 条目名**（作者"泽"的 44 张全部是"单条目 + 中文名 json"），
    /// 这类包在安卓上下载后必然读不出来（表现为"下载成功但实验室列表里没有"）。
    /// 一并解决 GBK（非 UTF-8）名：重写后不再依赖原名的编码。
    ///
    /// 结构处理：解析 EOCD → 逐中央目录条目 → 用 CD 里的 csize 从局部头数据区整段复制压缩流 →
    /// 写新局部头（**清掉"数据描述符"标志位 0x08**，因为新头里直接写真实大小）→
    /// 重写中央目录（偏移重算）→ 写 EOCD。目录条目与 extra/comment 一律丢弃（新名是扁平的）。
    ///
    /// @param {String} _src 源 zip（沙盒相对路径）
    /// @param {String} _dst 输出 zip（沙盒相对路径）
    /// @param {String} _prefix 新名前缀（用 ascii_dir_name(title)，保证跨地图不撞名）
    /// @param {Array} _map 输出映射 [[原名, 新名], ...]（GML 数组按引用传）
    /// @returns {Real} >0 = 重写的条目数；0 = 名字本来就全 ASCII（不必重写）；-1 = 不是标准 zip/结构异常（调用方回退旧逻辑）
    static zip_rewrite_names_ascii = function(_src, _dst, _prefix, _map) {
        var _in = buffer_load(_src)
        if (_in < 0) {
            return -1
        }
        var _size = buffer_get_size(_in)
        if (_size < 22) {
            buffer_delete(_in)
            return -1
        }
        // 1) 反向找 EOCD（PK\x05\x06，最多回扫 64KB+22）
        var _eocd = -1
        var _lo = _size - 22 - 65535
        if (_lo < 0) {
            _lo = 0
        }
        for (var i = _size - 22; i >= _lo; i--) {
            if (buffer_peek(_in, i, buffer_u8) == 0x50 and buffer_peek(_in, i + 1, buffer_u8) == 0x4B
                and buffer_peek(_in, i + 2, buffer_u8) == 0x05 and buffer_peek(_in, i + 3, buffer_u8) == 0x06) {
                _eocd = i
                break
            }
        }
        if (_eocd < 0) {
            buffer_delete(_in)
            return -1
        }
        var _count = buffer_peek(_in, _eocd + 10, buffer_u16)
        var _cd_off = buffer_peek(_in, _eocd + 16, buffer_u32)
        if (_cd_off + 46 > _size) {
            buffer_delete(_in)
            return -1
        }
        // 2) 预扫描：有非 ASCII 条目名才值得重写（全 ASCII 的包走旧逻辑更稳）
        var _has_high = false
        var _pos = _cd_off
        for (var k = 0; k < _count; k++) {
            if (buffer_peek(_in, _pos, buffer_u32) != 0x02014b50) {
                break
            }
            var _nl0 = buffer_peek(_in, _pos + 28, buffer_u16)
            var _el0 = buffer_peek(_in, _pos + 30, buffer_u16)
            var _cl0 = buffer_peek(_in, _pos + 32, buffer_u16)
            if (_nl0 > 4096 or (_pos + 46 + _nl0) > _size) {
                break
            }
            for (var j = 0; j < _nl0; j++) {
                if (buffer_peek(_in, _pos + 46 + j, buffer_u8) >= 0x80) {
                    _has_high = true
                    break
                }
            }
            if (_has_high) {
                break
            }
            _pos += 46 + _nl0 + _el0 + _cl0
        }
        if (!_has_high) {
            buffer_delete(_in)
            return 0
        }
        // 3) 逐条目重建（局部头 + 数据原样 + 记录新偏移）
        var _out = buffer_create(65536, buffer_grow, 1)
        var _names = []
        var _flags = []
        var _methods = []
        var _times = []
        var _dates = []
        var _crcs = []
        var _csizes = []
        var _usizes = []
        var _loffs = []
        _pos = _cd_off
        for (var k = 0; k < _count; k++) {
            if (buffer_peek(_in, _pos, buffer_u32) != 0x02014b50) {
                buffer_delete(_out)
                buffer_delete(_in)
                return -1
            }
            var _fl = buffer_peek(_in, _pos + 8, buffer_u16)
            var _me = buffer_peek(_in, _pos + 10, buffer_u16)
            var _tm = buffer_peek(_in, _pos + 12, buffer_u16)
            var _dt = buffer_peek(_in, _pos + 14, buffer_u16)
            var _crc = buffer_peek(_in, _pos + 16, buffer_u32)
            var _cs = buffer_peek(_in, _pos + 20, buffer_u32)
            var _us = buffer_peek(_in, _pos + 24, buffer_u32)
            var _nl = buffer_peek(_in, _pos + 28, buffer_u16)
            var _el = buffer_peek(_in, _pos + 30, buffer_u16)
            var _cl = buffer_peek(_in, _pos + 32, buffer_u16)
            var _loff = buffer_peek(_in, _pos + 42, buffer_u32)
            if (_nl > 4096 or _el > 4096 or (_pos + 46 + _nl) > _size) {
                buffer_delete(_out)
                buffer_delete(_in)
                return -1
            }
            var _name_off = _pos + 46
            _pos += 46 + _nl + _el + _cl
            // zip64 / 加密：不支持，交回旧逻辑
            if (_cs == 4294967295 or _us == 4294967295 or _loff == 4294967295 or (_fl & 1) != 0) {
                buffer_delete(_out)
                buffer_delete(_in)
                return -1
            }
            var _is_dir = (_nl > 0 and buffer_peek(_in, _name_off + _nl - 1, buffer_u8) == 0x2F)
            if (_is_dir) {
                continue
            }
            // json 里的资源引用是"相对 json 所在目录"的**纯文件名**（如 ".\/Bgm.ogg"），
            // 所以映射里的旧名必须取 **basename**（去掉 zip 里的目录前缀），否则替换匹配不上 →
            // 表现为 "Failed to load audio for .../x.json: laboratory/Bgm.ogg"（引用仍指向旧名）
            var _slash = 0
            for (var j = _nl - 1; j >= 0; j--) {
                if (buffer_peek(_in, _name_off + j, buffer_u8) == 0x2F) {
                    _slash = j + 1
                    break
                }
            }
            var _old = self.utf8_name_from_buffer(_in, _name_off + _slash, _nl - _slash)
            // 扩展名：名字末尾的 '.' 之后是 1~5 个 ASCII 字母数字才采用
            var _ext = ""
            var _dot = -1
            for (var j = _nl - 1; j >= 0; j--) {
                if (buffer_peek(_in, _name_off + j, buffer_u8) == 0x2E) {
                    _dot = j
                    break
                }
            }
            var _ext_ok = false
            if (_dot >= 0 and (_nl - _dot - 1) >= 1 and (_nl - _dot - 1) <= 5) {
                _ext_ok = true
                for (var j = _dot + 1; j < _nl; j++) {
                    var _ec = buffer_peek(_in, _name_off + j, buffer_u8)
                    if (!((_ec >= 48 and _ec <= 57) or (_ec >= 65 and _ec <= 90) or (_ec >= 97 and _ec <= 122))) {
                        _ext_ok = false
                        break
                    }
                }
            }
            if (_ext_ok) {
                for (var j = _dot + 1; j < _nl; j++) {
                    _ext += chr(buffer_peek(_in, _name_off + j, buffer_u8))
                }
                _ext = string_lower(_ext)
            }
            var _new = _prefix + "_file_" + string(array_length(_names))
            if (_ext != "") {
                _new += "." + _ext
            }
            // 数据起点：局部头 + 30 + 局部名长 + 局部 extra 长
            if (_loff + 30 > _size) {
                buffer_delete(_out)
                buffer_delete(_in)
                return -1
            }
            var _lnl = buffer_peek(_in, _loff + 26, buffer_u16)
            var _lel = buffer_peek(_in, _loff + 28, buffer_u16)
            var _data_off = _loff + 30 + _lnl + _lel
            if (_data_off + _cs > _size) {
                buffer_delete(_out)
                buffer_delete(_in)
                return -1
            }
            var _local_off = buffer_tell(_out)
            var _nlen_new = string_length(_new)
            buffer_write(_out, buffer_u32, 0x04034b50)
            buffer_write(_out, buffer_u16, 20)
            buffer_write(_out, buffer_u16, _fl & ~8)
            buffer_write(_out, buffer_u16, _me)
            buffer_write(_out, buffer_u16, _tm)
            buffer_write(_out, buffer_u16, _dt)
            buffer_write(_out, buffer_u32, _crc)
            buffer_write(_out, buffer_u32, _cs)
            buffer_write(_out, buffer_u32, _us)
            buffer_write(_out, buffer_u16, _nlen_new)
            buffer_write(_out, buffer_u16, 0)
            buffer_write(_out, buffer_text, _new)
            buffer_copy(_in, _data_off, _cs, _out, _local_off + 30 + _nlen_new)
            buffer_seek(_out, buffer_seek_end, 0)
            array_push(_names, _new)
            array_push(_flags, _fl & ~8)
            array_push(_methods, _me)
            array_push(_times, _tm)
            array_push(_dates, _dt)
            array_push(_crcs, _crc)
            array_push(_csizes, _cs)
            array_push(_usizes, _us)
            array_push(_loffs, _local_off)
            array_push(_map, [_old, _new])
        }
        if (array_length(_names) <= 0) {
            buffer_delete(_out)
            buffer_delete(_in)
            return -1
        }
        // 4) 中央目录 + EOCD
        var _cd_start = buffer_tell(_out)
        var _n_total = array_length(_names)
        for (var k = 0; k < _n_total; k++) {
            var _nm = _names[k]
            buffer_write(_out, buffer_u32, 0x02014b50)
            buffer_write(_out, buffer_u16, 20)
            buffer_write(_out, buffer_u16, 20)
            buffer_write(_out, buffer_u16, _flags[k])
            buffer_write(_out, buffer_u16, _methods[k])
            buffer_write(_out, buffer_u16, _times[k])
            buffer_write(_out, buffer_u16, _dates[k])
            buffer_write(_out, buffer_u32, _crcs[k])
            buffer_write(_out, buffer_u32, _csizes[k])
            buffer_write(_out, buffer_u32, _usizes[k])
            buffer_write(_out, buffer_u16, string_length(_nm))
            buffer_write(_out, buffer_u16, 0)
            buffer_write(_out, buffer_u16, 0)
            buffer_write(_out, buffer_u16, 0)
            buffer_write(_out, buffer_u16, 0)
            buffer_write(_out, buffer_u32, 0)
            buffer_write(_out, buffer_u32, _loffs[k])
            buffer_write(_out, buffer_text, _nm)
        }
        var _cd_size = buffer_tell(_out) - _cd_start
        buffer_write(_out, buffer_u32, 0x06054b50)
        buffer_write(_out, buffer_u16, 0)
        buffer_write(_out, buffer_u16, 0)
        buffer_write(_out, buffer_u16, _n_total)
        buffer_write(_out, buffer_u16, _n_total)
        buffer_write(_out, buffer_u32, _cd_size)
        buffer_write(_out, buffer_u32, _cd_start)
        buffer_write(_out, buffer_u16, 0)
        // 注意：本 runtime 的 buffer_save_ext 第 4 个参数**不是文件名**
        // （实测报错 "buffer_save_ext argument 4 incorrect type (string) expecting a Number"），
        // 所以改用 buffer_resize 把 buffer 裁到实际写入长度 + buffer_save 保存整个 buffer。
        var _final = buffer_tell(_out);
        buffer_resize(_out, _final);
        buffer_save(_out, _dst)
        buffer_delete(_out)
        buffer_delete(_in)
        return _n_total
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
            // 删掉下载目录里的原 json：否则实验室根级的**递归**扫描会同时看到"根级副本"与
            // "download/<dir>/ 里那份"，同一张地图在列表里出现两次（资源仍留在下载目录，
            // 根级 json 已把引用改写成 download/<dir>/xxx，所以删掉原 json 不影响加载）
            file_delete(_jp)
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
        var _root = string_replace_all(self.laboratory_appdata(), "\\", "/")
        var _prefix = self.ascii_dir_name(_title)
        show_debug_message("[OnlineMap] unzip " + _zip + " -> " + _dest)
        global.unzip_diag += " | title=" + string(_title)
        var _bad_name = self.zip_name_is_non_utf8(_zip)
        // ── 路径 A（首选）：把包内条目名重写成 "<prefix>_file_N.ext"（全 ASCII 扁平）后**直接解压到实验室根级**。
        // 一次绕开三个坑：①安卓沙盒对非 ASCII 文件名失配（file_find/file_copy/sprite_add）；
        // ②实验室列表递归扫描子目录失配；③"根级副本 + 下载目录副本"被加载两次。
        var _map = []
        var _ascii_zip = _zip + ".ascii.zip"
        var _rewritten = -1
        // 兜底：zip 结构千奇百怪（zip64/加密/截断），重写里任何越界或异常都不能让游戏崩
        try {
            _rewritten = self.zip_rewrite_names_ascii(_zip, _ascii_zip, _prefix, _map)
        } catch (_e) {
            global.unzip_diag += " | 重写异常: " + string(_e.message)
            _rewritten = -1
        }
        global.unzip_diag += " | 名字非UTF8=" + string(_bad_name) + " 重写条目=" + string(_rewritten)
        if (_rewritten > 0) {
            var _code_a = native_unzip_map_file(_ascii_zip, _root)
            if (file_exists(_ascii_zip)) {
                file_delete(_ascii_zip)
            }
            var _jsons_a = []
            var _it = file_find_first(_root + "/" + _prefix + "_file_*.json", fa_archive | fa_readonly)
            while (_it != "") {
                array_push(_jsons_a, _root + "/" + _it)
                _it = file_find_next()
            }
            file_find_close()
            for (var j = 0; j < array_length(_jsons_a); j++) {
                self.patch_stage_json(_jsons_a[j], _map)
            }
            var _n_a = self.count_stage_jsons(_title)
            global.unzip_diag += " | 路径A: 解压码=" + string(_code_a) + " json=" + string(_n_a)
            if (_n_a > 0) {
                show_debug_message("[OnlineMap] unzip_diag: " + string(global.unzip_diag))
                return 0
            }
            global.unzip_diag += " | 路径A 未成功，回退路径B"
        } else if (_bad_name) {
            global.unzip_diag += " | 包内文件名为 GBK（非 UTF-8）且重写未生效，安卓 zip_unzip 写盘会失败"
            return -3
        }
        // ── 路径 B（回退）：解压到 download/<dir>/ → 平铺改名 → 提升 json 到根级
        var _code = native_unzip_map_file(_zip, _dest)
        if (!directory_exists(_dest)) {
            global.unzip_diag += " | 解压后目标目录不存在";
            return (_code != 0) ? _code : -1
        }
        // 解压结果：平铺 + ASCII 改名（旧名→新名映射），随后改写 json 内引用
        _map = []
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

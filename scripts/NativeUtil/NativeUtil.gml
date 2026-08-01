/// 

function NativeUtil() constructor {

    
    /// @param {String} _path 
    /// @returns {String}
    static get_path_in_local_appdata = function(_path) {
        var _user_profile = environment_get_variable("LOCALAPPDATA")
        if (_user_profile == undefined || _user_profile == "") {
            _user_profile = working_directory
        }
        return self.transfer_path_to_windows(_user_profile + _path)
    }

    /// @param {String} _path 
    /// @returns {String}
    static transfer_path_to_windows = function(_path) {
        return string_replace(_path, "/", "\\")
    }

    /// @param {Real} _code 
    /// @param {String} _msg 
    static show_error = function(_code, _msg) {
        show_message_async(_msg + "code: " + string(_code))
    }

}

// =====================================================================
// 跨平台 native_* 兼容层
// 原 WindowsNative 扩展（FvmNativeSupport.dll）为 Windows 专属，Android 上不存在。
// 此处用纯 GML 实现同名函数：Windows 保留真实功能，Android 上作为空操作/降级处理。
// 所有函数返回 0 表示成功；-3 表示"无内容可操作"；其他非 0 表示失败。
// =====================================================================

/// @function native_open_folder
/// @param {String} _path 要打开的文件夹路径
/// @returns {Real} 0 表示成功
function native_open_folder(_path) {
    if (os_type == os_windows) {
        os_execute("explorer.exe", "\"" + _path + "\"")
    }
    return 0
}

/// @function native_folder_exists
/// @param {String} _path 文件夹路径
/// @returns {Real} 1 存在，0 不存在
function native_folder_exists(_path) {
    return directory_exists(_path) ? 1 : 0
}

/// @function native_file_exists
/// @param {String} _path 文件路径
/// @returns {Real} 1 存在，0 不存在
function native_file_exists(_path) {
    return file_exists(_path) ? 1 : 0
}

/// @function native_copy_folder
/// @param {String} _src 源文件夹
/// @param {String} _dst 目标文件夹
/// @returns {Real} 0 成功，非 0 失败
function native_copy_folder(_src, _dst) {
    return _native_util_copy_folder_recursive(_src, _dst) ? 0 : -1
}

/// @function native_delete_folder
/// @param {String} _path 要删除的文件夹
/// @returns {Real} 0 成功，非 0 失败
function native_delete_folder(_path) {
    return _native_util_delete_folder_recursive(_path) ? 0 : -1
}

/// @function native_start_backup_with_target_file
/// @param {String} _saves_dir 存档目录
/// @param {String} _target_file 备份目标
/// @returns {Real} 0 成功，-3 无存档，非 0 失败
function native_start_backup_with_target_file(_saves_dir, _target_file) {
    if (!directory_exists(_saves_dir)) {
        return -3
    }
    return _native_util_copy_folder_recursive(_saves_dir, _target_file) ? 0 : -1
}

/// @function native_start_backup
/// @param {String} _saves_dir 存档目录
/// @returns {Real} 0 成功，-3 无存档，非 0 失败
function native_start_backup(_saves_dir) {
    if (!directory_exists(_saves_dir)) {
        return -3
    }
    var _parent = filename_dir(_saves_dir)
    var _backups = _native_util_join_path(_parent, "backups")
    var _stamp = string(date_current_datetime())
    _stamp = string_replace_all(_stamp, "/", "-")
    _stamp = string_replace_all(_stamp, ":", "-")
    var _target = _native_util_join_path(_backups, "backup_" + _stamp)
    return _native_util_copy_folder_recursive(_saves_dir, _target) ? 0 : -1
}

/// @function native_restore_backup_with_target_file
/// @param {String} _saves_dir 存档目录
/// @param {String} _backup_file 备份文件/目录
/// @returns {Real} 0 成功，-3 无备份，非 0 失败
function native_restore_backup_with_target_file(_saves_dir, _backup_file) {
    if (!directory_exists(_backup_file)) {
        return -3
    }
    if (!directory_exists(_saves_dir)) {
        directory_create(_saves_dir)
    }
    return _native_util_copy_folder_recursive(_backup_file, _saves_dir) ? 0 : -1
}

/// @function native_restore_backup
/// @param {String} _saves_dir 存档目录
/// @param {String} _backup_dir 备份根目录（取其中最新一份）
/// @returns {Real} 0 成功，-3 无备份，非 0 失败
function native_restore_backup(_saves_dir, _backup_dir) {
    if (!directory_exists(_backup_dir)) {
        return -3
    }
    var _subs = _native_util_find_sub_folders(_backup_dir)
    if (array_length(_subs) == 0) {
        return -3
    }
    var _newest = _subs[0]
    for (var i = 1; i < array_length(_subs); i++) {
        if (_subs[i] > _newest) {
            _newest = _subs[i]
        }
    }
    if (!directory_exists(_saves_dir)) {
        directory_create(_saves_dir)
    }
    return _native_util_copy_folder_recursive(_newest, _saves_dir) ? 0 : -1
}

/// @function native_set_native_log_file_path
/// @param {String} _path 日志文件路径（非 Windows 平台忽略）
/// @returns {Real} 0 表示成功
function native_set_native_log_file_path(_path) {
    return 0
}

/// @description 拼接路径（统一为 / 分隔）
/// @param {String} _a 
/// @param {String} _b 
/// @returns {String} 
function _native_util_join_path(_a, _b) {
    var _a2 = string_replace_all(_a, "\\", "/")
    var _b2 = string_replace_all(_b, "\\", "/")
    if (string_char_at(_a2, string_length(_a2)) != "/") {
        _a2 += "/"
    }
    return _a2 + _b2
}

/// @description 递归复制文件夹（含子目录与文件）
/// @param {String} _src 
/// @param {String} _dst 
/// @returns {Bool} 
function _native_util_copy_folder_recursive(_src, _dst) {
    var _src2 = string_replace_all(_src, "\\", "/")
    var _dst2 = string_replace_all(_dst, "\\", "/")
    if (string_char_at(_src2, string_length(_src2)) != "/") {
        _src2 += "/"
    }
    if (string_char_at(_dst2, string_length(_dst2)) != "/") {
        _dst2 += "/"
    }
    if (!directory_exists(_src2)) {
        return false
    }
    if (!directory_exists(_dst2)) {
        if (!directory_create(_dst2)) {
            return false
        }
    }
    var _ok = true
    var _item = file_find_first(_src2 + "*.*", fa_directory | fa_archive | fa_hidden | fa_readonly)
    while (_item != "" && _ok) {
        if (_item != "." && _item != "..") {
            if (directory_exists(_src2 + _item)) {
                _ok = _native_util_copy_folder_recursive(_src2 + _item, _dst2 + _item)
            } else {
                _ok = file_copy(_src2 + _item, _dst2 + _item)
            }
        }
        _item = file_find_next()
    }
    file_find_close()
    return _ok
}

/// @description 递归删除文件夹（含子目录与文件）
/// @param {String} _path 
/// @returns {Bool} 
function _native_util_delete_folder_recursive(_path) {
    var _p = string_replace_all(_path, "\\", "/")
    if (string_char_at(_p, string_length(_p)) != "/") {
        _p += "/"
    }
    if (!directory_exists(_p)) {
        return true
    }
    var _ok = true
    var _item = file_find_first(_p + "*.*", fa_directory | fa_archive | fa_hidden | fa_readonly)
    while (_item != "" && _ok) {
        if (_item != "." && _item != "..") {
            if (directory_exists(_p + _item)) {
                _ok = _native_util_delete_folder_recursive(_p + _item)
            } else {
                _ok = file_delete(_p + _item)
            }
        }
        _item = file_find_next()
    }
    file_find_close()
    if (_ok && directory_exists(_p) && os_type == os_windows) {
        var _short = string_copy(_p, 1, string_length(_p) - 1)
        directory_destroy(_short)
    }
    return _ok
}

/// @description 列出某目录下的所有子目录
/// @param {String} _path 
/// @returns {Array<String>} 
function _native_util_find_sub_folders(_path) {
    var _p = string_replace_all(_path, "\\", "/")
    if (string_char_at(_p, string_length(_p)) != "/") {
        _p += "/"
    }
    var _result = []
    if (!directory_exists(_p)) {
        return _result
    }
    var _item = file_find_first(_p + "*", fa_directory)
    while (_item != "") {
        if (_item != "." && _item != ".." && directory_exists(_p + _item)) {
            array_push(_result, _p + _item)
        }
        _item = file_find_next()
    }
    file_find_close()
    return _result
}
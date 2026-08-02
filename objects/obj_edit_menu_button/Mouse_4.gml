audio_play_sound(snd_button,0,0)
{
	var _fh = file_text_open_append(working_directory + "debug_save.log");
	file_text_write_string(_fh, "Mouse4 click, btn_type=" + btn_type + "\n");
	file_text_close(_fh);
}
if btn_type == "cancel"{
	instance_destroy(obj_edit_menu)
	obj_player_info_ui.menu_type = 0
}
else if btn_type == "save"{
	with obj_edit_menu{
		event_user(0)
	}
	global.save_data.player.name = global.player_name
	instance_destroy(obj_edit_menu)
	obj_player_info_ui.menu_type = 0
}
else if btn_type == "open_save_folder"{
	if (os_type == os_windows) {
		var _target = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\saves")
		var ret = native_open_folder(_target)
		if (ret != 0) {
			global.native_util.show_error(ret, "打开存档文件夹失败")
		}
	} else {
		show_message_async("安卓端请使用【导出存档】备份到可访问位置（点确定测试Dialog回调）")
	}
}
else if btn_type == "export_save_backup" {
	if (os_type == os_windows) {
		var _saves_target = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\saves")
		var ret = native_start_backup(_saves_target)
		if (ret != 0 && ret != -3) {
			global.native_util.show_error(ret, "导出存档备份失败")
		} else {
			show_message_async("存档已导出")
		}
	} else {
		// 安卓：备份到游戏内 backups 目录（带时间戳，可存多份）
		var _save_path = "saves/save" + string(global.save_slot) + ".json";
		if (!file_exists(_save_path)) {
			show_message_async("暂无存档可导出")
		} else {
			if (!directory_exists("backups")) {
				directory_create("backups")
			}
			var _d = date_current_datetime();
			var _stamp = string(date_get_year(_d)) + string(date_get_month(_d)) + string(date_get_day(_d)) + "_" + string(date_get_hour(_d)) + string(date_get_minute(_d)) + string(date_get_second(_d));
			var _bak = "backups/save" + string(global.save_slot) + "_" + _stamp + ".json";
			if (file_copy(_save_path, _bak)) {
				show_message_async("存档已备份（游戏内可恢复）")
			} else {
				show_message_async("备份失败")
			}
		}
	}
}
else if btn_type == "import_save_backup" {
	if (os_type == os_windows) {
		var _saves_target = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\saves")
		var _backup_target = global.native_util.get_path_in_local_appdata("\\FVM_Reborn\\backups")
		var ret = native_restore_backup(_saves_target, _backup_target)
		if (ret != 0 && ret != -3) {
			global.native_util.show_error(ret, "导入存档备份失败")
		} else {
			load_file(global.save_slot)
			show_message_async("导入存档成功")
		}
	} else {
		// 安卓：从 backups 目录恢复最新一份备份
		var _best_name = "";
		var _f = file_find_first("backups/save*.json", 0);
		while (_f != "") {
			if (string_upper(_f) > string_upper(_best_name)) {
				_best_name = _f;
			}
			_f = file_find_next();
		}
		file_find_close();
		if (_best_name == "") {
			show_message_async("暂无备份可导入")
		} else {
			if (file_copy("backups/" + _best_name, "saves/save" + string(global.save_slot) + ".json")) {
				load_file(global.save_slot)
				show_message_async("已导入备份：" + _best_name)
			} else {
				show_message_async("导入失败")
			}
		}
	}
}


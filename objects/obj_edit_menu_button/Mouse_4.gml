audio_play_sound(snd_button,0,0)
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
		// 安卓：导出 = 存档复制到剪贴板（可粘贴到备忘录/微信保存）+ 游戏内备份兜底
		var _save_path = "saves/save" + string(global.save_slot) + ".json";
		if (!file_exists(_save_path)) {
			show_message_async("暂无存档可导出")
		} else {
			clipboard_set_text(json_stringify(global.save_data));
			if (!directory_exists("backups")) {
				directory_create("backups")
			}
			var _d = date_current_datetime();
			var _stamp = string(date_get_year(_d)) + string(date_get_month(_d)) + string(date_get_day(_d)) + "_" + string(date_get_hour(_d)) + string(date_get_minute(_d)) + string(date_get_second(_d));
			file_copy(_save_path, "backups/save" + string(global.save_slot) + "_" + _stamp + ".json");
			// FVM: 写分享请求（Java 桥读取后生成含内容的 txt 到下载目录并拉起系统分享面板，
			// 绕开微信/QQ 文本框字符数限制；剪贴板内容保持不变作为兜底）
			var _sf = file_text_open_write("share_request.txt");
			file_text_write_string(_sf, json_stringify(global.save_data));
			file_text_close(_sf);
			show_message_async("存档已复制到剪贴板，正在拉起系统分享…（txt 文件同时生成在下载目录）")
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
		// 安卓：导入 = 读取剪贴板存档内容（先复制存档文本再导入）
		var _txt = clipboard_get_text();
		if (_txt == "") {
			show_message_async("剪贴板为空，请先复制要导入的存档内容（可先用导出功能）")
		} else {
			var _ok = false;
			try {
				var _data = json_parse(_txt);
				if (is_struct(_data) && !is_undefined(_data[$ "version"])) {
					global.save_data = _data;
					save_file(global.save_slot);
					load_file(global.save_slot);
					_ok = true;
				}
			} catch(e) {
				_ok = false;
			}
			if (_ok) {
				show_message_async("存档导入成功")
			} else {
				show_message_async("剪贴板内容不是有效的存档")
			}
		}
	}
}


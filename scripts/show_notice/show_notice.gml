/// @function show_notice(notice_text,life)
/// @description 在屏幕上显示通知
/// @param {string} notice_text 通知文本
/// @param {real} life 通知存在的时间
function show_notice(notice_text, life) {
    // 创建通知数据结构
    var notice = {
        text: notice_text,
        life: life,
        total_life: life,
        frames: 0,
        alpha: 0,
        scale: 1.2,
        pos_x: room_width / 2,
        pos_y: room_height / 3,
        target_y: camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 3
    };
    
    // 如果没有全局通知列表，则创建一个
    if (!variable_global_exists("notice_list")) {
        global.notice_list = [];
    }
    
    // 将新通知添加到列表
    array_push(global.notice_list, notice);
}

// 在某个控制对象的步事件中更新所有通知
function update_notices() {
    if (!variable_global_exists("notice_list")) return;
    
    var camera_x = camera_get_view_x(view_camera[0]);
    var camera_y = camera_get_view_y(view_camera[0]);
    var camera_w = camera_get_view_width(view_camera[0]);
    var camera_h = camera_get_view_height(view_camera[0]);
    
    for (var i = array_length(global.notice_list) - 1; i >= 0; i--) {
        var notice = global.notice_list[i];
        notice.frames++;
        
        // 更新位置以确保通知保持在屏幕中心偏上
        notice.pos_x = room_width / 2;
        //notice.target_y = camera_y + camera_h / 3;
        //notice.pos_y = notice.target_y;
        
        // 前20帧：淡入和缩放效果
        if (notice.frames <= 10) {
            notice.alpha = notice.frames / 10;
            notice.scale = 2.2 - (0.2 * (notice.frames / 10));
        }
        // 生命周期结束前的阶段
        else if (notice.frames > notice.life) {
            // 向上移动并淡出
            notice.pos_y -= 2;
            notice.alpha = 1 - ((notice.frames - notice.life) / 20);
            
            // 当完全透明时移除通知
            if (notice.alpha <= 0) {
                array_delete(global.notice_list, i, 1);
                continue;
            }
        }
        
        global.notice_list[i] = notice;
    }
}

// 在绘制事件中绘制所有通知
function draw_notices() {
    if (!variable_global_exists("notice_list")) return;
    
    for (var i = 0; i < array_length(global.notice_list); i++) {
        var notice = global.notice_list[i];
        
        // 设置字体和颜色
        var text = notice.text;
        var pos_x = notice.pos_x;
        var pos_y = notice.pos_y;
        var alpha = notice.alpha;
        var scale = notice.scale;
        
		draw_set_font(font_yuan);
		
        // 计算文本尺寸
        var text_width = string_width(text) * scale;
        var text_height = string_height(text) * scale;
        
        // 绘制半透明黑色背景框
        var padding = 5 * scale;
        draw_set_alpha(0.7 * alpha);
        draw_set_color(c_black);
        draw_roundrect(
            pos_x - text_width/2 - padding,
            pos_y - text_height*scale + padding,
            pos_x + text_width/2 + padding,
            pos_y - text_height + padding*2,
            false // 不绘制轮廓
        );
        
        // 绘制白色描边
        draw_set_alpha(alpha);
        draw_set_color(c_white);
        //draw_set_line_width(2 * scale);
        draw_roundrect(
            pos_x - text_width/2 - padding,
            pos_y - text_height*scale + padding,
            pos_x + text_width/2 + padding,
            pos_y - text_height + padding*2,
            true // 绘制轮廓
        );
        
        // 绘制绿色文本
        draw_set_color(make_color_rgb(0, 255, 0)); // 绿色
        draw_set_font(font_yuan);
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
        draw_set_alpha(alpha);
        draw_text_ext_transformed(
            pos_x, pos_y-3, text,90,1920,scale,scale,0
        );
        
        // 重置绘制设置
        draw_set_alpha(1);
        draw_set_color(c_white);
        //draw_set_line_width(1);
    }
}

// =====================================================================
// 报错弹窗（形态对齐 GameMaker 自带运行时报错框）
//   标题 + 正文 + 两个按钮：[确定] / [导出错误报告]（导出 = 把完整报错信息复制到剪贴板）
//   取代 show_message_async：系统弹窗在安卓上无法定制按钮，也没有"导出报错信息"。
//   由 obj_notice_controller 的 Step/Draw 驱动（update_error_dialog / draw_error_dialog）。
// =====================================================================

/// @function is_error_dialog_open()
/// @returns {Bool} 是否有报错弹窗开着（供底层交互屏蔽）
function is_error_dialog_open() {
    return variable_global_exists("error_dialog") && !is_undefined(global.error_dialog);
}

/// @function show_error_dialog(title, body)
/// @description 弹出自定义报错窗。导出的报告会附版本/平台/时间/链路诊断，便于回报。
/// @param {String} _title 标题，如「下载失败」
/// @param {String} _body  正文（换行用 \n）
function show_error_dialog(_title, _body) {
    var _full = string(_body);
    _full += "\n\n———— 报错报告 ————";
    _full += "\n标题: " + string(_title);
    if (variable_global_exists("game_version")) {
        _full += "\n版本: " + string(global.game_version);
    }
    _full += "\n平台: " + string(os_type) + "    时间: " + date_datetime_string(date_current_datetime());
    global.error_dialog = {
        title: string(_title),
        body: string(_body),
        full: _full,
        copied: 0
    };
}

/// @function error_dialog_layout()
/// @returns {Struct} 视野、面板与两个按钮的矩形（update 与 draw 共用，保证点击区与绘制一致）
function error_dialog_layout() {
    // 本工程 UI 全部使用**房间坐标**（实验室房间 enableViews=false，没有相机；
    // 参照 LaboratoryGUI 的 set_position(room_width - 170, 60) 等写法），
    // 所以这里以 room_width/room_height 为基准居中，不要用 camera_get_view_*。
    var _cx = 0;
    var _cy = 0;
    var _cw = room_width;
    var _ch = room_height;
    if (_cw <= 0) {
        _cw = display_get_width();
    }
    if (_ch <= 0) {
        _ch = display_get_height();
    }
    var _w = min(_cw * 0.74, 1120);
    var _h = min(_ch * 0.62, 640);
    var _x1 = _cx + (_cw - _w) * 0.5;
    var _y1 = _cy + (_ch - _h) * 0.5;
    var _bw = 268;
    var _bh = 66;
    var _gap = 48;
    var _by1 = _y1 + _h - _bh - 30;
    var _ok_x1 = _x1 + _w * 0.5 - _gap * 0.5 - _bw;
    var _ex_x1 = _x1 + _w * 0.5 + _gap * 0.5;
    return {
        cx: _cx, cy: _cy, cw: _cw, ch: _ch,
        x1: _x1, y1: _y1, x2: _x1 + _w, y2: _y1 + _h,
        ok_x1: _ok_x1, ok_y1: _by1, ok_x2: _ok_x1 + _bw, ok_y2: _by1 + _bh,
        ex_x1: _ex_x1, ex_y1: _by1, ex_x2: _ex_x1 + _bw, ex_y2: _by1 + _bh
    };
}

/// @function update_error_dialog()
/// @description 处理两个按钮的点击（【导出错误报告】= 复制完整报错信息到剪贴板）
function update_error_dialog() {
    if (!is_error_dialog_open()) return;
    var _d = global.error_dialog;
    if (_d.copied > 0) {
        _d.copied -= 1;
    }
    var _L = error_dialog_layout();
    var _mx = mouse_x;
    var _my = mouse_y;
    if (mouse_check_button_pressed(mb_left)) {
        if (_mx >= _L.ok_x1 && _mx <= _L.ok_x2 && _my >= _L.ok_y1 && _my <= _L.ok_y2) {
            global.error_dialog = undefined;
            return;
        }
        if (_mx >= _L.ex_x1 && _mx <= _L.ex_x2 && _my >= _L.ex_y1 && _my <= _L.ex_y2) {
            clipboard_set_text(string(_d.full));
            _d.copied = 150;
        }
    }
    global.error_dialog = _d;
}

/// @function draw_error_dialog()
function draw_error_dialog() {
    if (!is_error_dialog_open()) return;
    var _d = global.error_dialog;
    var _L = error_dialog_layout();
    // 遮罩（铺满整个视野）
    draw_set_alpha(0.55);
    draw_set_color(c_black);
    draw_rectangle(_L.cx, _L.cy, _L.cx + _L.cw, _L.cy + _L.ch, false);
    draw_set_alpha(1);
    // 面板
    draw_set_color(make_color_rgb(246, 246, 248));
    draw_roundrect(_L.x1, _L.y1, _L.x2, _L.y2, false);
    draw_set_color(make_color_rgb(120, 120, 130));
    draw_roundrect(_L.x1, _L.y1, _L.x2, _L.y2, true);
    // 标题 + 分隔线
    draw_set_font(font_yuan);
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_color(make_color_rgb(28, 28, 38));
    draw_text_transformed(_L.x1 + 34, _L.y1 + 48, string(_d.title), 1.5, 1.5, 0);
    draw_set_color(make_color_rgb(180, 180, 190));
    draw_line(_L.x1 + 30, _L.y1 + 86, _L.x2 - 30, _L.y1 + 86);
    // 正文（显示用；过长只截断显示，导出仍是全文）
    var _show = string(_d.body);
    if (string_length(_show) > 900) {
        _show = string_copy(_show, 1, 900) + "\n…（内容过长，点[导出错误报告]可复制完整信息）";
    }
    draw_set_color(make_color_rgb(40, 40, 50));
    draw_set_valign(fa_top);
    draw_text_ext(_L.x1 + 34, _L.y1 + 106, _show, 34, (_L.x2 - _L.x1) - 68);
    // 两个按钮
    var _mx = mouse_x;
    var _my = mouse_y;
    var _over_ok = (_mx >= _L.ok_x1 && _mx <= _L.ok_x2 && _my >= _L.ok_y1 && _my <= _L.ok_y2);
    var _over_ex = (_mx >= _L.ex_x1 && _mx <= _L.ex_x2 && _my >= _L.ex_y1 && _my <= _L.ex_y2);
    draw_set_color(_over_ok ? make_color_rgb(96, 152, 224) : make_color_rgb(76, 128, 200));
    draw_roundrect(_L.ok_x1, _L.ok_y1, _L.ok_x2, _L.ok_y2, false);
    draw_set_color(_over_ex ? make_color_rgb(96, 170, 110) : make_color_rgb(70, 148, 86));
    draw_roundrect(_L.ex_x1, _L.ex_y1, _L.ex_x2, _L.ex_y2, false);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text_transformed((_L.ok_x1 + _L.ok_x2) * 0.5, (_L.ok_y1 + _L.ok_y2) * 0.5, "确定", 1.15, 1.15, 0);
    draw_text_transformed((_L.ex_x1 + _L.ex_x2) * 0.5, (_L.ex_y1 + _L.ex_y2) * 0.5, "导出错误报告", 1.15, 1.15, 0);
    if (_d.copied > 0) {
        draw_set_color(make_color_rgb(28, 28, 38));
        draw_set_valign(fa_bottom);
        draw_text_transformed((_L.ex_x1 + _L.ex_x2) * 0.5, _L.ex_y1 - 10, "报错信息已复制到剪贴板", 1.0, 1.0, 0);
    }
    // 复位绘制状态
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_alpha(1);
    draw_set_color(c_white);
}
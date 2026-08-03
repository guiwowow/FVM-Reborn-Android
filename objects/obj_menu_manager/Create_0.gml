global.menu_screen = true

depth = -1200

// 强制清除application_surface，避免上一房间图像残留
if surface_exists(application_surface){
	surface_set_target(application_surface);
	draw_clear_alpha(c_black, 0); // 用透明黑色清除surface，alpha值0表示完全透明
	surface_reset_target();
}

instance_create_depth(1355,820,-2,obj_startgame_button)
instance_create_depth(100,0,-2,obj_player_info_ui)

/// @type {Asset.GMObject.EventEntranceList} 
var _entrance_list = instance_create_depth(0, 0, -2, EventEntranceList)
_entrance_list.set_position(600,20)
              .set_size(900, 300)


if not instance_exists(obj_menu_music_controller){
	var mus_inst = instance_create_depth(0,0,0,obj_menu_music_controller)
	mus_inst.menu_music = mus_town
}
if not instance_exists(obj_world_map_button){
	instance_create_depth(1670,80,0,obj_world_map_button)
}
instance_create_depth(room_width-210,room_height,-1,obj_player_menu_bg)
timer = 0

/// @description preload textures

global.laboretory_room = false

// 设备档次检测：
// 1. 内存 < 8GB → 一律低配（内存是硬指标，<8G 的手机处理器不会太强）
// 2. 内存 ≥ 8GB → 用 GPU 档次判定（运行时拿不到 CPU 型号，GL_RENDERER 可推断处理器档次）
var _oinfo = os_get_info()
global.gpu_vendor = ""
global.gpu_renderer = ""
if (ds_exists(_oinfo, ds_type_map)){
	global.gpu_vendor = string(ds_map_find_value(_oinfo, "GL_VENDOR"))
	global.gpu_renderer = string(ds_map_find_value(_oinfo, "GL_RENDERER"))
	ds_map_destroy(_oinfo)
}
// 内存检测：尝试读 /proc/meminfo（安卓沙箱可能允许）；失败则用 GPU 档次近似判定
global.total_mem_mb = 0
if (os_type == os_android) {
	var _f = file_text_open_read("/proc/meminfo")
	if (_f >= 0) {
		var _s = file_text_read_string(_f)
		file_text_close(_f)
		var _pos = string_pos("MemTotal:", _s)
		if (_pos > 0) {
			var _rest = string_copy(_s, _pos + 10, 32)
			var _sp = string_pos(" ", _rest)
			if (_sp > 0) global.total_mem_mb = real(string_copy(_rest, 1, _sp - 1)) / 1024
		}
	}
}
global.is_low_mem = (global.total_mem_mb > 0 && global.total_mem_mb < 8192)
if (global.total_mem_mb <= 0) {
	global.is_low_mem = gpu_is_low_tier(global.gpu_renderer)
}
// [临时探针-发布前删] 显示分档依据供天玑玩家验证
global.os_info_str = "GPU=" + global.gpu_renderer + " RAM=" + string(round(global.total_mem_mb)) + "MB 低配=" + string(global.is_low_mem)

// 低端 GPU 判定（对应低端处理器档位；清单完善中）
function gpu_is_low_tier(_renderer){
	var _r = _renderer
	// 天玑低端 Mali（Helio G 系列）与骁龙低端 Adreno（6xx 早期）
	if (string_find(_r, "Mali-G31") > 0 || string_find(_r, "Mali-G52") > 0 || string_find(_r, "Mali-G57") > 0) return true
	if (string_find(_r, "Adreno 610") > 0 || string_find(_r, "Adreno 612") > 0 || string_find(_r, "Adreno 619") > 0 || string_find(_r, "Adreno 620") > 0) return true
	return false
}

self.texture_to_load = [
	"Default",
	"UI",
	"cards",
	"enemy_delicious",
	"enemy_volcanic",
	"bullet",
	"effects",
	"player",
	"maps",
	"enemy_tower",
	"enemy_floating",
	"pack_undersea_vortex"
]

// 低配（Mali/天玑/小内存）：只预取核心组（Default 为必含基础组），其余按需加载 → 启动内存峰值砍半，换取启动稳定
if (global.is_low_mem){
	self.texture_to_load = [
		"Default",
		"UI",
		"cards",
		"bullet",
		"player",
		"effects"
	]
}

self.texture_count = array_length(self.texture_to_load)
self.texture_loaded = 0
global.preloaded = variable_global_exists("preloaded") ? global.preloaded : false
self.display_progress = 0

// 预热（shader 编译 + 字体字形生成，分帧执行；shader 编译是进程级的，每次启动都要预热）
// 注意：不能用 struct 字面量数组（会破坏 GMA 全局 struct 编号，导致其他对象编译失败）
prewarm_active = false
prewarm_idx = 0
prewarm_total = 0
prewarm_types = []
prewarm_res = []
audio_wait_start = 0

if !global.preloaded{
	instance_create_depth(-800,-800,0,obj_update_checker_btn)
}

function after_texture_load() {
    // 安卓/移动端：等待音频组异步加载完成（防首次播放音频卡顿），未就绪下一帧重试
    // 低配机不等待（优先启动稳定，接受首次播放音乐轻微延迟）
    if (os_type != os_windows && !global.is_low_mem) {
        if (!audio_group_is_loaded(music) || !audio_group_is_loaded(sound)) {
            return;
        }
    }
    // 启动预热：shader 驱动编译缓存 + 字体字形（避免游戏内首次使用资源卡顿）
    // 高配：全部 12 shader + 7 字体（游戏内零卡顿）；低配：只字体字形（Mali 编译 shader 慢且耗内存，跳过换启动稳定）
    if (global.is_low_mem) {
        prewarm_types = ["font","font","font","font","font","font","font"]
        prewarm_res = [font_hei, font_number, font_pixel, font_song, font_song2, font_yuan, scribble_fallback_font]
    } else {
        prewarm_types = ["shader","shader","shader","shader","shader","shader","shader","shader","shader","shader","shader","shader","font","font","font","font","font","font","font"]
        prewarm_res = [__shd_scribble, __shd_scribble_bake_effect_4dir, __shd_scribble_bake_effect_8dir, __shd_scribble_bake_effect_8dir_2px, __shd_scribble_bake_effect_no_outline, __shd_scribble_bake_outline_4dir, __shd_scribble_bake_outline_8dir, __shd_scribble_bake_outline_8dir_2px, __shd_scribble_bake_shadow, ClipRRectShader, hit_effect, hit_effect_2, font_hei, font_number, font_pixel, font_song, font_song2, font_yuan, scribble_fallback_font]
    }
    prewarm_total = array_length(prewarm_res)
    prewarm_idx = 0
    prewarm_active = true
    // 安卓/移动端跳过 scribble 中文字体烘焙（CPU 极重且可能触发阻塞弹窗），文字回退用普通字体渲染
    if (os_type == os_android) {
        if !global.preloaded{
            global.preloaded = true;
        }
        return;
    }
    scribble_font_set_default("font_hei")
    scribble_font_bake_outline_4dir("font_hei", "font_hei_outline_4dir_black", c_dkgray, false)
	if !global.preloaded{
		with obj_update_checker_btn{
			event_user(1)
		}
		global.preloaded = true;
	}
}

/// @description 分帧预热：离屏绘制触发 shader 编译与字体字形生成
function prewarm_step() {
    if (!prewarm_active) return;
    if (prewarm_idx >= prewarm_total) {
        prewarm_active = false;
        return;
    }
    var _surf = surface_create(2, 2)
    if (_surf != -1) {
        surface_set_target(_surf)
        if (prewarm_types[prewarm_idx] == "shader") {
            shader_set(prewarm_res[prewarm_idx])
            draw_rectangle(0, 0, 2, 2, false)
            shader_reset()
        } else {
            draw_set_font(prewarm_res[prewarm_idx])
            draw_text(0, 0, "预热")
        }
        surface_reset_target()
        surface_free(_surf)
    }
    prewarm_idx++
}

function pre_load_texture() {
    if (global.preloaded) return;

    if (self.animating) {
        var _target = self.texture_loaded;
        self.display_progress = lerp(self.display_progress, _target, 0.1);

        if (abs(self.display_progress - _target) < 0.01) {
            self.display_progress = _target;
            self.animating = false;
            
            if (self.texture_loaded >= self.texture_count) {
                after_texture_load();
            }
        }
        return;
    }

    // 贴图全部预取完成但未就绪（等待音频加载）：每帧重试
    if (self.texture_loaded >= self.texture_count) {
        after_texture_load();
        return;
    }

    if (self.texture_loaded < self.texture_count) {
        texture_prefetch(self.texture_to_load[self.texture_loaded]);
        self.texture_loaded += 1;
        self.animating = true;
    }
}


self.total_progress_bar_width = 700
self.active_bg = $fde98b
self.inactive_bg = c_white
self.active_width = 0
self.offset_x = (room_width - self.total_progress_bar_width) / 2
self.offset_y = (room_height/2 + 250)
self.animating = false
function on_draw() {
    if (!self.animating && self.texture_loaded == 0) return;
    if (global.preloaded) return;

    draw_set_colour(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(0, 0, room_width, room_height, false);
    draw_set_alpha(1);

    var _ratio = (self.texture_count > 0) ? (self.display_progress / self.texture_count) : 0;
    var _current_width = self.total_progress_bar_width * _ratio;

    var _x1 = self.offset_x;
    var _y1 = self.offset_y;
    var _bar_h = 20;

    draw_set_color(self.inactive_bg);
    draw_rectangle(_x1 - 2, _y1 - 2, _x1 + self.total_progress_bar_width + 2, _y1 + _bar_h + 2, false);

    draw_set_color(self.active_bg);
    draw_rectangle(_x1, _y1, _x1 + _current_width, _y1 + _bar_h, false);
	draw_sprite_ext(spr_game_logo,0,room_width/2,room_height/3,1,1,0,c_white,1)
    
	draw_set_valign(fa_left)
	draw_set_halign(fa_top)
    draw_set_color(c_white);
    draw_set_font(font_yuan);
	var _text = "加载完成！"
	var _pct = 0
	if self.texture_loaded <= array_length(self.texture_to_load)-1{
		var _group_name = self.texture_to_load[clamp(self.texture_loaded,0,array_length(self.texture_to_load)-1)]
		_text = "加载资源 " + string(self.texture_loaded) + "/" + string(self.texture_count) + " — 当前：" + _group_name
		_pct = round((self.texture_loaded / self.texture_count) * 100)
	}
	else if (os_type != os_windows && (!audio_group_is_loaded(music) || !audio_group_is_loaded(sound))){
		_text = "音频加载中…"
	}
	else if (prewarm_active){
		_text = "预热中 " + string(prewarm_idx) + "/" + string(prewarm_total)
	}
    draw_text(_x1, _y1 - 30, _text);
	// 进度条内显示百分比
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_white)
	if (self.texture_loaded <= array_length(self.texture_to_load)-1) {
		draw_text(_x1 + self.total_progress_bar_width / 2, _y1 + _bar_h / 2, string(_pct) + "%")
	}
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_set_colour(c_yellow)
	draw_text(_x1+self.total_progress_bar_width/2, _y1 - 80, "本游戏为免费开源游戏，任何付费获取方式均为诈骗\n游戏作者B站名称：Spring曙光");
	// [临时探针-发布前删] 显示 os_get_info 设备信息，供天玑玩家/开发确认分档数据
	draw_set_colour(c_red)
	draw_set_font(font_pixel)
	var _os_show = string_copy(global.os_info_str, 1, 160)
	draw_text(_x1+self.total_progress_bar_width/2, _y1 + 60, _os_show)
	draw_set_font(font_yuan)
}



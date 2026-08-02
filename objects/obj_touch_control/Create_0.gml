// ============================================================
// obj_touch_control —— 触屏适配控制器（持久对象）
// 为 Android 触屏补充原版依赖鼠标右键/键盘的操作：
//  1) 双指点击  = 取消当前选中（替代右键 / Esc）
//  2) 屏幕右上角取消按钮（替代右键 / Esc）
//  3) 触屏铲子/卡槽的选取已由对象自身点击逻辑支持
// 本对象不依赖具体平台，Windows 上也可正常使用。
// ============================================================

persistent = true
depth = 1000000

prev_touch_count = 0

// 取消按钮（GUI 坐标系，游戏内 1920x1080 空间，右上角）
cancel_btn = { x: 1800, y: 20, w: 90, h: 90 }
// 铲子切换按钮（GUI 坐标系，左上角）——触屏上快速切换铲子
shovel_btn = { x: 24, y: 20, w: 90, h: 90 }

/// @description 取消当前选中（卡槽或铲子）
function cancel_current_selection() {
    if (global.selected_slot != noone && instance_exists(global.selected_slot)) {
        global.selected_slot.is_selected = false;
        if (global.selected_slot.selected_preview != noone && instance_exists(global.selected_slot.selected_preview)) {
            instance_destroy(global.selected_slot.selected_preview);
        }
        global.selected_slot.selected_preview = noone;
        global.selected_slot = noone;
    }
    var _shovel = instance_find(obj_shovel_slot, 0);
    if (instance_exists(_shovel) && _shovel.is_selected) {
        deselect_shovel();
    }
}

/// @description 是否处于战斗/出击界面（存在卡槽或铲子槽）
function in_battle_hud() {
    return instance_exists(obj_shovel_slot) || instance_exists(obj_card_slot)
}

/// @description 触屏上切换铲子选择状态
function toggle_shovel() {
    var _shovel = instance_find(obj_shovel_slot, 0);
    if (!instance_exists(_shovel)) return;
    if (_shovel.is_selected) {
        deselect_shovel();
    } else {
        select_shovel();
    }
}

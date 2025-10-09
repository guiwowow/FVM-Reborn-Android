image_xscale = 1.8
image_yscale = 1.8
image_speed = 0

// obj_shovel_slot CREATE 事件
is_selected = false;        // 铲子是否被选中
is_ready = true;            // 铲子总是可用
description = "铲子:移除植物";
shovel_spr = spr_shovel;    // 铲子精灵
hotkey = "`";               // 快捷键
var slot_length = ds_list_size(global.selected_deck)
if slot_length <= 14{
	image_index = 0
}
else{
	image_index = 1
}
// 位置和大小
slot_width = 84;
slot_height = 105;
x_offset = 0;
y_offset = 0;
mx = 0
my = 0
depth = -1200

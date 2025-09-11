image_xscale = 1.8
image_yscale = 1.8

is_submenu_opened = false
shop_button_select = 1
shop_screen_select = 1
current_page = 1
current_max_page = 10

instance_create_depth(x+800,y-430,depth-1,obj_closeshop_btn)

//创建商店栏位选择按钮
var btn1 = instance_create_depth(x-743,y-363,depth-1,obj_shop_select_btn)
btn1.button_index = 1
btn1.sprite_index = spr_shop_select_btn_1
var btn2 = instance_create_depth(x-560,y-363,depth-1,obj_shop_select_btn)
btn2.button_index = 2
btn2.sprite_index = spr_shop_select_btn_2
var btn3 = instance_create_depth(x-377,y-363,depth-1,obj_shop_select_btn)
btn3.button_index = 3
btn3.sprite_index = spr_shop_select_btn_3

var prev_btn = instance_create_depth(x+285,y+435,depth-1,obj_shop_page_btn)
prev_btn.btn_type = "prev"
var next_btn = instance_create_depth(x+485,y+435,depth-1,obj_shop_page_btn)
next_btn.btn_type = "next"
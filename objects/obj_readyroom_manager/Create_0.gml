// 强制清除application_surface，避免上一房间图像残留
surface_set_target(application_surface);
draw_clear_alpha(c_black, 0); // 用透明黑色清除surface，alpha值0表示完全透明
surface_reset_target();

global.menu_screen = false
instance_create_depth(1700,883,-2,obj_battlestart_button)
readyroom_music = mus_readyroom

ds_list_clear(global.selected_deck);
add_to_deck("xiao_long_bao",0);
add_to_deck("small_fire",get_card_info_simple("small_fire").shape);
add_to_deck("flour_sack",get_card_info_simple("flour_sack").shape);
add_to_deck("toast_bread",0)
//add_to_deck("toast_bread",0);
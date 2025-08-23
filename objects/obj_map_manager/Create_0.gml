// 强制清除application_surface，避免上一房间图像残留
surface_set_target(application_surface);
draw_clear_alpha(c_black, 0); // 用透明黑色清除surface，alpha值0表示完全透明
surface_reset_target();
instance_create_depth(100,0,-2,obj_player_info_ui)
instance_create_depth(1365,455,-2,obj_levelselect_button)
instance_create_depth(room_width-210,room_height,-1,obj_player_menu_bg)



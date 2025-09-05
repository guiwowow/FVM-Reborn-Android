// obj_battle_pause_manager - Draw Event
if (global.is_paused)
{
    // 1. 绘制半透明遮罩
    
    
    // 2. 根据状态显示不同内容
    if (global.show_menu)
    {
        // 绘制菜单 (示例：居中菜单框)
        var menu_x = room_width / 2;
        var menu_y = room_height / 2;
        
        // 菜单背景
        //draw_set_color(c_white);
        //draw_rectangle(menu_x - 100, menu_y - 100, menu_x + 100, menu_y + 100, false);
        
        // 菜单选项 (示例)
		//draw_set_color(c_black);
        //draw_set_halign(fa_center);
        //draw_text(menu_x, menu_y - 30, "继续游戏");
        //draw_text(menu_x, menu_y + 10, "退出关卡");
        // 这里可以添加菜单交互逻辑
    }
    else
    {
		draw_set_alpha(0.5);
		draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
		draw_set_alpha(1);
        // 只显示"暂停中"文字
		draw_set_font(font_yuan)
        draw_set_halign(fa_center);
        draw_set_valign(fa_middle);
		draw_set_color(c_white)
		if obj_battle.battle_time != 1{
			draw_text(room_width / 2, room_height / 2, "暂停中");
		}
		else{
			draw_sprite_ext(spr_place_player_tip,0,room_width / 2, room_height / 2,1.8,1.8,0,c_white,1)
		}
    }
}
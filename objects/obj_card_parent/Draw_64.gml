if global.is_paused{
	exit
}
// 植物血条绘制
if (global.card_hpbar && hp > 0) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(font_yuan)
	draw_set_color(c_green)
	draw_text(x,y,"HP:"+string(hp)+"/"+string(max_hp))
    // 血条位置（在植物上方）
    var bar_x = x;
    var bar_y = y + 10;
    var bar_width = 80;
    var bar_height = 10;
    
    // 绘制血条背景（灰色）
    draw_set_color(c_gray);
    draw_rectangle(bar_x-bar_width/2, bar_y, bar_x + bar_width/2, bar_y + bar_height, false);
    
    // 计算血量比例
    var hp_ratio = hp / max_hp;
    hp_ratio = clamp(hp_ratio, 0, 1);
    
    // 绘制血条主体（绿色）
    draw_set_color(c_green);
	
    draw_rectangle(bar_x-bar_width/2, bar_y, bar_x-bar_width/2 + bar_width * hp_ratio, bar_y + bar_height, false);
}
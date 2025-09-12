// 绘制事件
draw_set_alpha(0.5);
// 绘制半透明遮罩
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);
draw_self()

// 绘制玩家金币数量
draw_set_font(font_yuan); 
draw_set_color(c_yellow);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
draw_text(x - 485, y + 447, string(global.save_data.player.gold));
//绘制页码
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text(x + 387, y + 435, string(current_page)+"/"+string(current_max_page));
//绘制背景
draw_sprite_ext(spr_shop_bg_2,0,x,y+58,1.8,1.8,0,c_white,1)

//绘制商品网格
for(var i = 0 ; i< 4; i++){
	for(var j = 0; j < 4; j++){
		draw_sprite_ext(spr_shop_goods_bg,0,x-618+411*i,y-190+165*j,1.8,1.8,0,c_white,1)
	}
}

//按类型绘制图标

for(var i = 0 ; i< 4; i++){
	for(var j = 0; j < 4; j++){
		//绘制卡片类型商品
		if shop_button_select == 1{
			if ds_list_find_value(goods_list,i*4+j+(current_page-1)*16) != undefined{
				//根据商品id获取卡片信息
				var card_data = deck_get_card_data(global.goods_map[? ds_list_find_value(goods_list,i*4+j+(current_page-1)*16)].unlock_item_id,0)
				draw_sprite_ext(spr_slot, 0, x-618+411*i-122,y-190+165*j, 0.33, 0.33, 0, c_white, 1);
				draw_sprite_ext(card_data[? "sprite"],0,x-618+411*i-122,y-190+165*j+25,1,1,0,c_white,1)
				draw_set_halign(fa_left);
				draw_set_valign(fa_middle);
				draw_set_color(c_black);
				draw_set_font(font_yuan);
				draw_text_ext_transformed(x-618+411*i-122-12, y-190+165*j+40, string(card_data[? "cost"]),25,1800,1,1,0);
				draw_sprite_ext(spr_flame, 0, x-618+411*i-122-24, y-190+165*j+43, 0.3, 0.3, 0, c_white, 1);
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
				// 检查卡片是否已解锁
		            var is_unlocked = false;
		            for(var k = 0; k < array_length(global.save_data.unlocked_cards); k++) {
		                if (global.save_data.unlocked_cards[k].id == global.goods_map[? ds_list_find_value(goods_list,i*4+j+(current_page-1)*16)].unlock_item_id) {
		                    is_unlocked = true;
		                    break;
		                }
		            }
				if is_unlocked{
					
					draw_set_color(c_black)
					draw_set_alpha(0.5)
					draw_rectangle(x-618+411*i-205,y-190+165*j-82,x-618+411*i+205,y-190+165*j+82,false)
					draw_set_alpha(1)
					draw_sprite_ext(spr_sold_out, 0, x-618+411*i,y-190+165*j, 1.8, 1.8, 0, c_white, 1);
				}
			}
		}
	}
}

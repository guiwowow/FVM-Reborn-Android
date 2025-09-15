// Inherit the parent event

	// alarm[0]事件 - 实际攻击执行
	// 摧毁范围内敌人
	var _x = x;
	var _y = y;
	var _range = 250

	with (obj_enemy_parent) {
		
			if (health > 0 && point_distance(x, y, _x, _y) < _range && grid_row >= other.grid_row-1&&grid_row <= other.grid_row+1) {
		        if (immune_to_ash) {
		            // 对免疫灰烬的敌人只造成伤害
		            hp -= other.atk;
					event_user(0)
		            // 受伤效果
		            //effect_create_above(effect_smoke, x, y, 1, c_gray);
		        } else {
		            // 直接摧毁非免疫敌人
		            instance_destroy();
		            // 摧毁效果
		            //effect_create_above(ef_explosion, x, y, 1, c_yellow);
		        }
		    }
		
	}

	// 播放倭瓜攻击效果
	//effect_create_above(ef_explosion, x, y, 2, c_white);

	// 播放攻击声音
	 audio_play_sound(snd_coke_bomb_explode, 0, false);
	 
var effect_inst = instance_create_depth(x,y,depth,obj_coke_bomb_explode)
if shape == 0 {
	effect_inst.sprite_index = spr_coke_bomb_explode
}
else if shape == 1{
	effect_inst.sprite_index = spr_coke_bomb_explode_1
}
else if shape == 2{
	effect_inst.sprite_index = spr_coke_bomb_explode_2
}
event_inherited()
// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (global.slowmo_active) {
    if (!variable_instance_exists(id, "__slow_base_ispeed")) __slow_base_ispeed = image_speed;
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = __slow_base_ispeed;
} else if (variable_instance_exists(id, "__slow_base_ispeed")) {
    image_speed = __slow_base_ispeed;
}

if global.is_paused{
	exit
}
timer++
if timer < 15*5{
	image_index = floor(timer/5)
}
else{
	image_index = 14
	image_alpha -= 0.1
	if image_alpha <=0{
		instance_destroy()
	}
}

if timer == 4 * 5{
	var _x = x;
	var _y = y;
	var _range = 80;

	with (obj_enemy_parent) {
	    if (point_distance(x, y, _x, _y) < _range && grid_row == other.row) {
	        if (immune_to_ash) {
	            // 对免疫灰烬的敌人只造成伤害
	            hp -= 900;
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
	var f_inst = instance_create_depth(x,y-50,-1300,obj_flame)
	f_inst.value = 25
}

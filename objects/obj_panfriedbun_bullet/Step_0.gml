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
x += move_speed
y -= cvspeed
cvspeed -= cgravity
image_angle -= 2
if x > 2200 or y > 1200 or x < -200 or y < -200{
	instance_destroy()
}

if y >= thrower_y {
    // 击中地面，造成溅射伤害
	var grid_pos = get_grid_position_from_world(x,y)
	var inst = instance_create_depth(grid_pos.x,grid_pos.y,0,obj_panfriedbun_bullet_effect)
	inst.damage = round(damage*splash_ratio)
	inst.grid_row = grid_pos.row
	inst.shape = shape
	if shape >= 1{
		inst.sprite_index = spr_panfriedbun_bullet_effect_2
	}
    instance_destroy()
}

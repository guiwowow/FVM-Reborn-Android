// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
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

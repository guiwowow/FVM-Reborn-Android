// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
if global.is_paused || not is_collected{
	image_speed = 0
}
else{
	image_speed = 1
}
if (y >= ground_level)  {
        y = ground_level;
        is_landed = true;
        velocity_x = 0;
        velocity_y = 0;
		gravity = 0
		hspeed = 0
		vspeed = 0
        
        // 落地特效
        //instance_create_layer(x, y, "Effects", obj_sun_land_fx);
    }
if (is_collected){
	gravity = 0
	hspeed = 0
	vspeed = 0
}

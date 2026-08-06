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
// Inherit the parent event

if hp > maxhp - helmet_hp{
	sprite_index = spr_machine_football_fan_mouse_helmet
}
else{
	sprite_index = spr_machine_football_fan_mouse
}

if hp <= maxhp - helmet_hp && not armor_dropped{
	var inst = instance_create_depth(x-25,y-175,depth-1,obj_enemy_armor)
	inst.ground_y = y - 45
	inst.type = "helmet"
	inst.x_speed = random_range(3,5)
	inst.y_speed = random_range(-5,-8)
	inst.cgravity = 0.8
	inst.sprite_index = spr_football_helmet
	armor_dropped = true
}

event_inherited();
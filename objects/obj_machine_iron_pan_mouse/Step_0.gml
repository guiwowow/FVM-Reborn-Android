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
// Inherit the parent event

if hp > maxhp - helmet_hp{
	sprite_index = spr_machine_iron_pan_mouse_helmet
	hit_sound = snd_hit3
}
else{
	sprite_index = spr_machine_iron_pan_mouse
	hit_sound = snd_hit1
}
if hp <= maxhp - helmet_hp && not armor_dropped{
	var inst = instance_create_depth(x-45,y-175,depth-1,obj_enemy_armor)
	inst.ground_y = y - 45
	inst.type = "helmet"
	inst.x_speed = random_range(3,5)
	inst.y_speed = random_range(-5,-8)
	inst.cgravity = 0.8
	inst.sprite_index = spr_pan_helmet
	armor_dropped = true
}

event_inherited();
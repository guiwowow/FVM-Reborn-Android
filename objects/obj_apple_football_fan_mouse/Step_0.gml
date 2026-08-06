// 选卡缓时：每 12 帧推进一次（布局 60fps 渲染，逻辑 12 倍慢）
if (global.slowmo_active && global.game_frame != 0) exit;
// Inherit the parent event

if hp > maxhp - helmet_hp{
	sprite_index = spr_apple_football_fan_mouse_helmet
}
else{
	sprite_index = spr_apple_football_fan_mouse
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
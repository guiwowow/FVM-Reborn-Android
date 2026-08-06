// 选卡缓时：每 12 帧推进一次（布局 60fps 渲染，逻辑 12 倍慢）
if (global.slowmo_active && global.game_frame != 0) exit;
// Inherit the parent event

if shield_hp > 0{
	sprite_index = spr_shy_landlady_mouse_shield
	attack_anim = 6
}
else{
	sprite_index = spr_shy_landlady_mouse
	attack_anim = 4
}
if shield_hp <= 0 && not armor_dropped{
	var inst = instance_create_depth(x-45,y-75,depth-1,obj_enemy_armor)
	inst.ground_y = y - 30
	inst.type = "shield"
	inst.x_speed = random_range(-3,-5)
	inst.y_speed = random_range(-1,-3)
	inst.cgravity = 0.8
	inst.sprite_index = spr_landlady_shield
	armor_dropped = true
}
event_inherited();
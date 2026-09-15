// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (slowmo_gate()) exit;
// Inherit the parent event
event_inherited();

if global.is_paused{
	exit
}
summon_timer ++
if summon_timer >= 30 * 60{
	instance_create_depth(x-30,y-10,-800,obj_war_god_gear)
	summon_timer = 0
}
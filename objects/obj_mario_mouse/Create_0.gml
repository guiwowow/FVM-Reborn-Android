// Inherit the parent event
event_inherited();

mouse_id = "mario_mouse"
jump_times = 0
state = BOSS_STATE.APPEAR
hp = 5500
maxhp = 5500
immune_to_ash = true
wait_time = 5 * 60
cave = noone
sprite_index = spr_mario_mouse_appear

hpbar_inst = instance_create_depth(450,1040,-900,obj_boss_hpbar)
hpbar_inst.target_boss = id
hpbar_inst.boss_id = mouse_id
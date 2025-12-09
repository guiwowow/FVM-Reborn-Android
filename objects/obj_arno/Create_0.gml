// Inherit the parent event
event_inherited();

mouse_id = "arno"
jump_times = 0
state = BOSS_STATE.APPEAR
hp = 5000
maxhp = 5000
immune_to_ash = true
wait_time = 12 * 5 - 1
cave = noone
sprite_index = spr_arno_appear

hpbar_inst = instance_create_depth(450,1040,-900,obj_boss_hpbar)
hpbar_inst.target_boss = id
hpbar_inst.boss_id = mouse_id
function slots_init(){
	register_card("xiao_long_bao", obj_xiao_long_bao, [
	    {"shape":0, "sprite":spr_xiao_long_bao, "cost":100, "cooldown":7*60, "description":"小笼包：发射包子子弹"}
	]);
	
	register_card("small_fire", obj_small_fire, [
	    {"shape":0, "sprite":spr_small_fire, "cost":50, "cooldown":7*60, "description":"小火炉：生产火苗"},
	    {"shape":1, "sprite":spr_small_fire_1, "cost":25, "cooldown":7*60, "description":"日光炉：生产火苗"}
	]);
}
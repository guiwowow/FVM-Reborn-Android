function slots_init(){
	register_card("xiao_long_bao", obj_xiao_long_bao, [
	    {"shape":0, "sprite":spr_xiao_long_bao, "cost":100, "cooldown":7*60, "description":"小笼包：发射包子攻击敌人"}
	]);
	
	register_card("small_fire", obj_small_fire, [
	    {"shape":0, "sprite":spr_small_fire, "cost":50, "cooldown":7*60, "description":"小火炉：生产火苗"},
	    {"shape":1, "sprite":spr_small_fire_1, "cost":25, "cooldown":7*60, "description":"日光炉：生产火苗"},
		{"shape":2, "sprite":spr_small_fire_2, "cost":25, "cooldown":7*60, "description":"太阳能高效炉：一次生产两朵火苗"}
	]);
	
	register_card("toast_bread",obj_toast_bread,[
		{"shape":0,"sprite":spr_toast_bread,"cost":50,"cooldown":30*60,"description":"土司面包：阻挡敌人前进"}
	])
	
	register_card("flour_sack",obj_flour_sack,[
	    {"shape":0, "sprite":spr_flour_sack, "cost":50, "cooldown":30*60, "description":"面粉袋：压死老鼠"},
	    {"shape":1, "sprite":spr_flour_sack_1, "cost":75, "cooldown":30*60, "description":"影分身袋：压死老鼠"},
		{"shape":2, "sprite":spr_flour_sack_2, "cost":100, "cooldown":30*60, "description":"乾坤分身袋：压死老鼠"}
	])
	
	register_card("double_long_bao",obj_double_long_bao,[
	    {"shape":0, "sprite":spr_double_long_bao, "cost":200, "cooldown":7*60, "description":"双层小笼包：发射两发包子攻击敌人"}
	])
	
	register_card("mouse_clip",obj_mouse_clip,[
	    {"shape":0, "sprite":spr_mouse_clip, "cost":25, "cooldown":30*60, "description":"老鼠夹子：准备完成后，会在地面敌人接触后爆炸"},
	    {"shape":1, "sprite":spr_mouse_clip_1, "cost":25, "cooldown":30*60, "description":"多用老鼠夹子：准备完成后，会在敌人接触后爆炸"},
		{"shape":2, "sprite":spr_mouse_clip_2, "cost":25, "cooldown":30*60, "description":"黑猫鼠夹：准备完成后，会在敌人接触后产生3*4爆炸"}
	])
	register_card("coke_bomb",obj_coke_bomb,[
	    {"shape":0, "sprite":spr_coke_bomb, "cost":150, "cooldown":50*60, "description":"可乐炸弹：3*4范围爆炸"},
	    {"shape":1, "sprite":spr_coke_bomb_1, "cost":175, "cooldown":50*60, "description":"云爆可乐弹：3*4范围爆炸"},
		{"shape":2, "sprite":spr_coke_bomb_2, "cost":225, "cooldown":50*60, "description":"燃烧可乐弹：3*4范围爆炸，留下一片火焰"}
	])
}
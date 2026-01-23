function slots_init(){
	register_card("xiao_long_bao", obj_xiao_long_bao, [
	    {"shape":0, "sprite":spr_xiao_long_bao, "cost":100, "cooldown":7*60, "description":"小笼包：发射包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	
	register_card("small_fire", obj_small_fire, [
	    {"shape":0, "sprite":spr_small_fire, "cost":50, "cooldown":7*60, "description":"小火炉：生产火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_small_fire_1, "cost":25, "cooldown":7*60, "description":"日光炉：生产火苗","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_small_fire_2, "cost":25, "cooldown":7*60, "description":"太阳能高效炉：一次生产两朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	
	register_card("toast_bread",obj_toast_bread,[
		{"shape":0,"sprite":spr_toast_bread,"cost":50,"cooldown":30*60,"description":"土司面包：阻挡敌人前进","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("flour_sack",obj_flour_sack,[
	    {"shape":0, "sprite":spr_flour_sack, "cost":50, "cooldown":30*60, "description":"面粉袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_flour_sack_1, "cost":75, "cooldown":30*60, "description":"影分身袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_flour_sack_2, "cost":100, "cooldown":30*60, "description":"乾坤分身袋：压死老鼠","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("double_long_bao",obj_double_long_bao,[
	    {"shape":0, "sprite":spr_double_long_bao, "cost":200, "cooldown":7*60, "description":"双层小笼包：发射两发包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	
	register_card("mouse_clip",obj_mouse_clip,[
	    {"shape":0, "sprite":spr_mouse_clip, "cost":25, "cooldown":30*60, "description":"老鼠夹子：准备完成后，会在地面敌人接触后爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
	    {"shape":1, "sprite":spr_mouse_clip_1, "cost":25, "cooldown":30*60, "description":"多用老鼠夹子：准备完成后，会在敌人接触后爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
		{"shape":2, "sprite":spr_mouse_clip_2, "cost":25, "cooldown":30*60, "description":"黑猫鼠夹：准备完成后，会在敌人接触后产生3*4爆炸","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("coke_bomb",obj_coke_bomb,[
	    {"shape":0, "sprite":spr_coke_bomb, "cost":150, "cooldown":50*60, "description":"可乐炸弹：3*4范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_coke_bomb_1, "cost":175, "cooldown":50*60, "description":"云爆可乐弹：3*4范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_coke_bomb_2, "cost":225, "cooldown":50*60, "description":"燃烧可乐弹：3*4范围爆炸，留下一片火焰","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("wooden_plate",obj_wooden_plate,[
	    {"shape":0, "sprite":spr_wooden_plate, "cost":25, "cooldown":7*60, "description":"木盘子：在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"},
	    {"shape":1, "sprite":spr_wooden_plate_1, "cost":0, "cooldown":7*60, "description":"友情木盘子：在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"},
		{"shape":2, "sprite":spr_wooden_plate_2, "cost":0, "cooldown":7*60, "description":"坚韧木盘子：一次放置三个，在水上承载卡片","plant_type":"lilypad","feature_type":"water","target_card":"none"}
	])
	register_card("ice_long_bao", obj_ice_long_bao, [
	    {"shape":0, "sprite":spr_ice_long_bao, "cost":175, "cooldown":7*60, "description":"冰冻小笼包：发射减速冰包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("goblet_lamp", obj_goblet_lamp, [
	    {"shape":0, "sprite":spr_goblet_lamp, "cost":25, "cooldown":7*60, "description":"酒杯灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_goblet_lamp_1, "cost":15, "cooldown":7*60, "description":"节能灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_goblet_lamp_2, "cost":15, "cooldown":7*60, "description":"高效节能灯：先生产少量火苗，一段时间后正常","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("coffee_cup", obj_coffee_cup, [
	    {"shape":0, "sprite":spr_coffee_cup, "cost":0, "cooldown":7*60, "description":"咖啡杯：攻击三格内敌人，白天睡觉","plant_type":"normal","feature_type":"low","target_card":"none"},
	    {"shape":1, "sprite":spr_coffee_cup_1, "cost":0, "cooldown":7*60, "description":"花纹咖啡杯：攻击三格内敌人","plant_type":"normal","feature_type":"low","target_card":"none"},
		{"shape":2, "sprite":spr_coffee_cup_2, "cost":0, "cooldown":7*60, "description":"骨瓷咖啡杯：攻击一行敌人","plant_type":"normal","feature_type":"low","target_card":"none"}
	]);
	register_card("salad_pult", obj_salad_pult, [
	    {"shape":0, "sprite":spr_salad_pult, "cost":100, "cooldown":7*60, "description":"色拉投手：投掷可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_salad_pult_1, "cost":100, "cooldown":7*60, "description":"果蔬色拉投手：投掷可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_salad_pult_2, "cost":100, "cooldown":7*60, "description":"凯撒色拉投手：投掷两颗可弹射的番茄","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("coffee_pot", obj_coffee_pot, [
	    {"shape":0, "sprite":spr_coffee_pot, "cost":75, "cooldown":7*60, "description":"咖啡喷壶：穿透攻击四格内敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_coffee_pot_1, "cost":75, "cooldown":7*60, "description":"香醇咖啡喷壶：穿透攻击四格内敌人","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_coffee_pot_icon_2, "cost":75, "cooldown":7*60, "description":"红温咖啡喷壶：穿透攻击一行敌人","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_coffee_pot_2}
	]);
	register_card("chocolate_bread",obj_chocolate_bread,[
		{"shape":0,"sprite":spr_chocolate_bread,"cost":125,"cooldown":30*60,"description":"巧克力面包：阻挡敌人翻越","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":1,"sprite":spr_chocolate_bread_icon_1,"cost":125,"cooldown":30*60,"description":"德芙面包：阻挡敌人翻越","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_chocolate_bread_1}
	])
	register_card("water_tea_cup",obj_water_tea_cup,[
		{"shape":0,"sprite":spr_water_tea_cup,"cost":0,"cooldown":7*60,"description":"水上茶杯：在水上攻击三格内敌人，白天睡觉","plant_type":"normal","feature_type":"water","target_card":"none"}
	])
	register_card("ice_bucket_bomb",obj_ice_bucket_bomb,[
	    {"shape":0, "sprite":spr_ice_bucket_bomb, "cost":75, "cooldown":50*60, "description":"冰桶炸弹：冰冻并伤害全屏敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_ice_bucket_bomb_1, "cost":75, "cooldown":50*60, "description":"酸橙冰桶炸弹：冰冻并伤害全屏敌人，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_ice_bucket_bomb_2, "cost":75, "cooldown":50*60, "description":"杂果冰桶炸弹：冰冻并伤害全屏敌人，3*4范围冰爆，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("stinky_tofu_pult", obj_stinky_tofu_pult, [
	    {"shape":0, "sprite":spr_stinky_tofu_pult, "cost":150, "cooldown":7*60, "description":"臭豆腐投手：投掷能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_stinky_tofu_pult_1, "cost":150, "cooldown":7*60, "description":"什锦臭豆腐投手：投掷能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_stinky_tofu_pult_2, "cost":150, "cooldown":7*60, "description":"铁板臭豆腐投手：投掷两块能产生毒雾的豆腐","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("cat_box",obj_cat_box,[
	    {"shape":0, "sprite":spr_cat_box_1, "cost":100, "cooldown":7*60, "description":"猫猫盒：将老鼠惊吓至相邻行","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("kettle_bomb",obj_kettle_bomb,[
	    {"shape":0, "sprite":spr_kettle_bomb, "cost":275, "cooldown":50*60, "description":"开水壶炸弹：5*5范围爆炸，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_kettle_bomb_1, "cost":300, "cooldown":50*60, "description":"汽油壶炸弹：5*5范围爆炸，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_kettle_bomb_2, "cost":350, "cooldown":50*60, "description":"汽油干冰弹：5*5范围爆炸和减速","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("fishbone",obj_fishbone,[
	    {"shape":0, "sprite":spr_fishbone, "cost":100, "cooldown":7*60, "description":"鱼刺：攻击踩上它的老鼠，卡坏车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("triple_wine_rack",obj_triple_wine_rack,[
	    {"shape":0, "sprite":spr_triple_wine_rack, "cost":325, "cooldown":7*60, "description":"三线酒架：向前方三行发射3发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_triple_wine_rack_1, "cost":325, "cooldown":7*60, "description":"强力三线酒架：向前方三行发射4发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_triple_wine_rack_2, "cost":325, "cooldown":7*60, "description":"终结者酒架：向前方三行发射6发葡萄酒弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("brazier",obj_brazier,[
	    {"shape":0, "sprite":spr_brazier, "cost":175, "cooldown":7*60, "description":"火盆：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_brazier_1, "cost":175, "cooldown":7*60, "description":"电子烤盘：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_brazier_2, "cost":175, "cooldown":7*60, "description":"岩烧烤盘：点燃子弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("large_fire",obj_large_fire,[
	    {"shape":0, "sprite":spr_large_fire, "cost":150, "cooldown":50*60, "description":"大火炉：一次生产两朵火苗","plant_type":"normal","feature_type":"upgrade","target_card":"small_fire"},
	    {"shape":1, "sprite":spr_large_fire_1, "cost":150, "cooldown":50*60, "description":"高能火炉：一次生产三朵火苗","plant_type":"normal","feature_type":"upgrade","target_card":"small_fire"},
		{"shape":2, "sprite":spr_large_fire_2, "cost":150, "cooldown":50*60, "description":"超能燃气炉：一次生产三朵火苗","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("iron_fishbone",obj_iron_fishbone,[
	    {"shape":0, "sprite":spr_iron_fishbone, "cost":125, "cooldown":50*60, "description":"钢鱼刺：攻击踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"upgrade","target_card":"fishbone"},
	    {"shape":1, "sprite":spr_iron_fishbone_1, "cost":125, "cooldown":50*60, "description":"无座钢鱼刺：攻击踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"},
		{"shape":2, "sprite":spr_iron_fishbone_2, "cost":125, "cooldown":50*60, "description":"海贼王鱼刺：攻击并减速踩上它的老鼠，卡坏四次车辆","plant_type":"normal","feature_type":"dwarf","target_card":"none"}
	])
	register_card("gatlin_long_bao",obj_gatlin_long_bao,[
	    {"shape":0, "sprite":spr_gatlin_long_bao, "cost":250, "cooldown":50*60, "description":"机枪小笼包：发射四发包子","plant_type":"normal","feature_type":"upgrade","target_card":"double_long_bao"},
	    {"shape":1, "sprite":spr_gatlin_long_bao_1, "cost":250, "cooldown":50*60, "description":"竹筒机枪小笼包：发射四发包子","plant_type":"normal","feature_type":"upgrade","target_card":"double_long_bao"},
		{"shape":2, "sprite":spr_gatlin_long_bao_2, "cost":250, "cooldown":50*60, "description":"格林机枪笼包：发射六发包子","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("rotating_coffee_pot", obj_rotating_coffee_pot, [
	    {"shape":0, "sprite":spr_rotating_coffee_pot, "cost":150, "cooldown":50*60, "description":"旋转咖啡喷壶：3*3范围穿透攻击，白天睡觉","plant_type":"normal","feature_type":"upgrade","target_card":"coffee_pot"},
	    {"shape":1, "sprite":spr_rotating_coffee_pot_1, "cost":150, "cooldown":50*60, "description":"节能旋转咖啡壶：3*3范围穿透攻击，白天睡觉","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_rotating_coffee_pot_2, "cost":150, "cooldown":50*60, "description":"原子咖啡壶：5*5范围穿透攻击","plant_type":"normal","feature_type":"normal","target_card":"none"}
	]);
	register_card("takoyaki", obj_takoyaki, [
	    {"shape":0, "sprite":spr_takoyaki, "cost":225, "cooldown":50*60, "description":"章鱼烧：甩出两发追踪飞镖","plant_type":"normal","feature_type":"normal","target_card":"wooden_plate"},
	    {"shape":1, "sprite":spr_takoyaki_1, "cost":225, "cooldown":50*60, "description":"两栖章鱼烧：甩出两发追踪飞镖","plant_type":"normal","feature_type":"amphi","target_card":"none"},
		{"shape":2, "sprite":spr_takoyaki_2, "cost":225, "cooldown":50*60, "description":"火影章鱼烧：甩出四发追踪飞镖","plant_type":"normal","feature_type":"amphi","target_card":"none"}
	]);
	register_card("wine_bottle_bomb",obj_wine_bottle_bomb,[
	    {"shape":0, "sprite":spr_wine_bottle_bomb, "cost":125, "cooldown":50*60, "description":"酒瓶炸弹：一行范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_wine_bottle_bomb_1, "cost":150, "cooldown":50*60, "description":"高爆酒瓶弹：一行范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_wine_bottle_bomb_2, "cost":200, "cooldown":50*60, "description":"子母酒瓶弹：一行和一列范围爆炸","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
	register_card("egg_boiler_pult", obj_egg_boiler_pult, [
	    {"shape":0, "sprite":spr_egg_boiler_pult_icon, "cost":250, "cooldown":7*60, "description":"煮蛋器投手：投掷溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult},
	    {"shape":1, "sprite":spr_egg_boiler_pult_icon_1, "cost":250, "cooldown":7*60, "description":"威力煮蛋器：投掷溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult_1},
		{"shape":2, "sprite":spr_egg_boiler_pult_icon_2, "cost":250, "cooldown":7*60, "description":"强袭煮蛋器：投掷两个溅射鸡蛋","plant_type":"normal","feature_type":"normal","target_card":"none","place_preview":spr_egg_boiler_pult_2}
	]);
	register_card("double_water_pipe",obj_double_water_pipe,[
	    {"shape":0, "sprite":spr_double_water_pipe, "cost":125, "cooldown":7*60, "description":"双向水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
	    {"shape":1, "sprite":spr_double_water_pipe_1, "cost":125, "cooldown":7*60, "description":"控温双向水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"},
		{"shape":2, "sprite":spr_double_water_pipe_2, "cost":125, "cooldown":7*60, "description":"合金水管：向前后两个方向发射水弹","plant_type":"normal","feature_type":"normal","target_card":"none"}
	])
}
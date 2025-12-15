function shop_init(){
	register_goods("large_fire",{"type":"card","cost":"10000","unlock_item_id":"large_fire","description":"大火炉：一次生产两朵火苗","display_name":"大火炉"})
	register_goods("iron_fishbone",{"type":"card","cost":"5000","unlock_item_id":"iron_fishbone","description":"钢鱼刺：攻击踩上它的老鼠，卡坏四次垃圾车","display_name":"钢鱼刺"})
	register_goods("gatlin_long_bao",{"type":"card","cost":"50000","unlock_item_id":"gatlin_long_bao","description":"机枪小笼包：发射四发包子","display_name":"机枪小笼包"})
	register_goods("rotating_coffee_pot",{"type":"card","cost":"50000","unlock_item_id":"rotating_coffee_pot","description":"旋转咖啡喷壶：3*3范围穿透攻击，白天睡觉","display_name":"旋转咖啡喷壶"})
	register_goods("takoyaki",{"type":"card","cost":"80000","unlock_item_id":"takoyaki","description":"章鱼烧：甩出两发追踪飞镖","display_name":"章鱼烧"})
	register_goods("card_slot_plus",{"type":"item","cost":"20000","unlock_item_id":"card_slot","description":"增加一格卡槽，仅可在卡槽数小于18时使用","display_name":"卡槽+1","spr":spr_slot_plus})
	register_goods("card_slot_19",{"type":"item","cost":"50000","unlock_item_id":"card_slot_19","description":"解锁第19格卡槽","display_name":"卡槽第19格","spr":spr_slot_19})
	register_goods("card_slot_20",{"type":"item","cost":"80000","unlock_item_id":"card_slot_20","description":"解锁第20格卡槽","display_name":"卡槽第20格","spr":spr_slot_20})
	register_goods("card_slot_21",{"type":"item","cost":"100000","unlock_item_id":"card_slot_21","description":"解锁第21格卡槽","display_name":"卡槽第21格","spr":spr_slot_21})
}
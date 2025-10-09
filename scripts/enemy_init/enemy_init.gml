function enemy_init(){
	enemy_registry_init()
	register_enemy("normal_mouse",{"name":"平民鼠","_obj":obj_normal_mouse,"hp":100,"description":"平民鼠：很普通的老鼠，无特殊能力","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("football_fan_mouse",{"name":"球迷鼠","_obj":obj_football_fan_mouse,"hp":280,"description":"球迷鼠：生命值稍高的普通老鼠","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("iron_pan_mouse",{"name":"铁锅鼠","_obj":obj_iron_pan_mouse,"hp":660,"description":"铁锅鼠：生命值较高的普通老鼠","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("skateboard_mouse",{"name":"滑板鼠","_obj":obj_skateboard_mouse,"hp":170,"description":"滑板鼠：跳过第一个卡片","speed":0.90,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("landlady_mouse",{"name":"房东鼠","_obj":obj_landlady_mouse,"hp":100,"description":"房东鼠：抵挡直射子弹，免疫冰弹","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("zombie_with_flower_pot",{"name":"捧花僵尸鼠","_obj":obj_zombie_with_flower_pot,"hp":100,"description":"捧花僵尸鼠：花盆掉落后会发怒","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("machine_mouse",{"name":"机器鼠","_obj":obj_machine_mouse,"hp":170,"description":"机器鼠：接触到卡片后，会在1秒后爆炸","speed":0.60,"atk":900,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("ninja_mouse",{"name":"忍者鼠","_obj":obj_ninja_mouse,"hp":240,"description":"忍者鼠：不断召唤小喽啰","speed":1.20,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("minion_mouse",{"name":"小喽啰鼠","_obj":obj_minion_mouse,"hp":100,"description":"小喽啰鼠：由忍者鼠召唤","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("kangaroo",{"name":"跳跳鼠","_obj":obj_kangaroo,"hp":280,"description":"跳跳鼠：连续跳过卡片","speed":0.90,"atk":10,"cycle":36,"range":90,"ash_proof":false})
}
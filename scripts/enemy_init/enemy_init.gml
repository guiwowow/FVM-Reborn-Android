function enemy_init(){
	enemy_registry_init()
	register_enemy("normal_mouse",{"name":"平民鼠","_obj":obj_normal_mouse,"hp":100,"description":"平民鼠：很普通的老鼠，无特殊能力","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("normal_mouse",{"name":"球迷鼠","_obj":obj_football_fan_mouse,"hp":280,"description":"球迷鼠：生命值稍高的普通老鼠","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("normal_mouse",{"name":"铁锅鼠","_obj":obj_iron_pan_mouse,"hp":660,"description":"铁锅鼠：生命值较高的普通老鼠","speed":0.30,"atk":10,"cycle":36,"range":90,"ash_proof":false})
	register_enemy("normal_mouse",{"name":"滑板鼠","_obj":obj_skateboard_mouse,"hp":170,"description":"滑板鼠：跳过第一个卡片","speed":0.90,"atk":10,"cycle":36,"range":90,"ash_proof":false})
}
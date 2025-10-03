function enemy_init(){
	enemy_registry_init()
	register_enemy("normal_mouse",{"name":"平民鼠","_obj":obj_normal_mouse,"hp":100,"description":"平民鼠：很普通的老鼠，无特殊能力","speed":0.32,"atk":10,"cycle":36,"range":90,"ash_proof":false})
}
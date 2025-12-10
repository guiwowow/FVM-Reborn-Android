function boss_init(){
	boss_registry_init()
	register_boss("mario_mouse",{"name":"洞君","hp":5500,"icon":spr_mario_mouse_icon})
	register_boss("arno",{"name":"阿诺","hp":5000,"icon":spr_arno_icon})
	register_boss("temple_pharaoh",{"name":"法老原形","hp":6000,"icon":spr_pharaoh_icon})
}
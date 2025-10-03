function maps_init(){
	map_registry_init()
	register_map("delicious_island",{"map_name":"美味岛","map_sprite":spr_delicious_islands,"levels_data":[{"id":"salad_island_land","name":"色拉岛（陆）","button_index":1,"button_x":1365,"button_y":455,"level_file":"salad_island_land.json","level_sprite":spr_salad_island_land,"pre_music":mus_delicious_island_daytime_pre,"elite_music":mus_delicious_island_daytime_elite,"boss_music":mus_delicious_island_daytime_boss}]})
}
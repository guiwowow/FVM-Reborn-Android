function maps_init(){
	map_registry_init()
	register_map("delicious_island",{"map_name":"美味岛","map_sprite":spr_delicious_islands,"levels_data":[{"id":"salad_island_land","name":"色拉岛（陆）","button_index":1,"button_x":1365,"button_y":455,"level_file":"salad_island_land.json","level_sprite":spr_salad_island_land,"pre_music":mus_delicious_island_daytime_pre,"elite_music":mus_delicious_island_daytime_elite,"boss_music":mus_delicious_island_daytime_boss},
																										{"id":"salad_island_water","name":"色拉岛（水）","button_index":2,"button_x":1395,"button_y":620,"level_file":"salad_island_water.json","level_sprite":spr_salad_island_water,"pre_music":mus_delicious_island_daytime_pre,"elite_music":mus_delicious_island_daytime_elite,"boss_music":mus_delicious_island_daytime_boss},
																										{"id":"cookie_island","name":"曲奇岛","button_index":0,"button_x":1295,"button_y":285,"level_file":"cookie_island.json","level_sprite":spr_cookie_island,"pre_music":mus_delicious_island_daytime_pre,"elite_music":mus_delicious_island_daytime_elite,"boss_music":mus_delicious_island_daytime_boss}
	]})
}
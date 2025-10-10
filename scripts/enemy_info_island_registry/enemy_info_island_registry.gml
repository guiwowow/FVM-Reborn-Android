function enemy_info_island_register_init(){
	global.enemy_info_island = ds_map_create()
}


function register_enemy_info_island(enemy_id,info){
	global.enemy_info_island[? enemy_id] = info
}
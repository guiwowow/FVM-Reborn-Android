function level_info_island_registry_init(){
	global.level_info_island_map = ds_map_create()
}

function register_level_info_island(level_id,level_info){
	ds_map_add(global.level_info_island_map,level_id,level_info)
}
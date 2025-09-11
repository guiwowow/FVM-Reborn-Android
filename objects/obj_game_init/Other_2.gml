Enum_Init()
deck_init()
slots_init()
skill_registry_init();
skill_init()
weapon_registry_init()
weapons_init()
info_island_register_init()
info_island_init()

// 全局植物注册表
global.plant_registry = ds_map_create();
cards_init()

global.player_name = "Player";
global.player_sprite = noone;

load_file()
//reset_file()
unlock_card("toast_bread",9,0,3)
unlock_card("small_fire",9,1,3)
unlock_card("xiao_long_bao",9,0,3)
unlock_card("flour_sack",9,0,3)
//unlock_weapon("long_bao_gun")
//unlock_weapon("star_gun")
global.player_name = global.save_data.player.name
global.total_time = global.save_data.player.total_time

room_goto(room_menu)
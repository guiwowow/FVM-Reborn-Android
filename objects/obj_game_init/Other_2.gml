Enum_Init()
deck_init()
slots_init()
skill_registry_init();
skill_init()
weapon_registry_init()
weapons_init()
info_island_register_init()
info_island_init()
goods_registry_init()
shop_init()
maps_init()
enemy_init()
enemy_info_island_init()
randomise()

// 全局植物注册表
global.plant_registry = ds_map_create();
cards_init()

global.player_name = "Player";
global.player_sprite = noone;

load_file()
//reset_file()
unlock_card("toast_bread",12,0,7)
unlock_card("small_fire",12,2,7)
unlock_card("xiao_long_bao",12,0,7)
unlock_card("flour_sack",12,2,7)
unlock_card("double_long_bao",12,0,7)
unlock_card("mouse_clip",12,2,7)
unlock_card("coke_bomb",12,2,7)
unlock_card("wooden_plate",12,2,7)
unlock_card("ice_long_bao",12,0,7)
unlock_card("goblet_lamp",12,2,7)
unlock_card("coffee_cup",12,2,7)
unlock_card("salad_pult",12,2,7)
unlock_card("coffee_pot",12,2,7)
unlock_card("chocolate_bread",12,1,7)
unlock_card("water_tea_cup",12,0,7)
unlock_card("ice_bucket_bomb",12,2,7)
unlock_card("stinky_tofu_pult",12,2,7)
unlock_card("cat_box",12,0,7)
unlock_card("kettle_bomb",12,2,7)
unlock_card("fishbone",12,0,7)
unlock_card("triple_wine_rack",12,2,7)
unlock_card("brazier",12,2,7)
unlock_card("large_fire",12,2,7)
unlock_card("iron_fishbone",12,2,7)
unlock_card("gatlin_long_bao",12,2,7)
unlock_card("rotating_coffee_pot",12,2,7)
unlock_card("takoyaki",12,2,7)
global.save_data.player.gold = 900000
//unlock_weapon("long_bao_gun")
unlock_weapon("star_gun")
global.player_name = global.save_data.player.name
global.total_time = global.save_data.player.total_time

room_goto(room_menu)
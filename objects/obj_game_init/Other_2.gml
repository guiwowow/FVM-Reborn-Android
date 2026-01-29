Enum_Init()
deck_init()
slots_init()
skill_registry_init();
skill_init()
weapon_registry_init()
gem_registry_init()
weapons_init()
info_island_register_init()
info_island_init()
goods_registry_init()
shop_init()
maps_init()
enemy_init()
enemy_info_island_init()
plus_card_init()
boss_init()
level_info_island_init()
randomise()

// 全局植物注册表
global.plant_registry = ds_map_create();
cards_init()

global.player_name = "Player";
global.player_sprite = noone;

load_file(global.save_slot)
//reset_file()
unlock_card("toast_bread",5,0,4)
unlock_card("small_fire",5,0,4)
unlock_card("xiao_long_bao",5,0,4)
unlock_card("flour_sack",5,0,4)
unlock_card("double_long_bao",5,0,4)
unlock_card("mouse_clip",5,0,4)
unlock_card("coke_bomb",5,0,4)
unlock_card("wooden_plate",5,0,4)
unlock_card("ice_long_bao",5,0,4)
unlock_card("goblet_lamp",5,0,4)
unlock_card("coffee_cup",5,0,4)
unlock_card("salad_pult",5,0,4)
unlock_card("coffee_pot",5,0,4)
unlock_card("chocolate_bread",5,0,4)
unlock_card("water_tea_cup",5,0,4)
unlock_card("ice_bucket_bomb",5,0,4)
unlock_card("stinky_tofu_pult",5,0,4)
unlock_card("cat_box",5,0,4)
unlock_card("kettle_bomb",5,0,4)
unlock_card("fishbone",5,0,4)
unlock_card("triple_wine_rack",5,0,4)
unlock_card("brazier",5,0,4)
//unlock_card("large_fire",5,0,4)
//unlock_card("iron_fishbone",5,0,4)
//unlock_card("gatlin_long_bao",5,0,4)
//unlock_card("rotating_coffee_pot",5,0,4)
//unlock_card("takoyaki",5,0,4)
unlock_card("wine_bottle_bomb",5,0,4)
unlock_card("egg_boiler_pult",5,0,4)
unlock_card("double_water_pipe",5,0,4)
unlock_card("melon_shield",5,0,4)
unlock_card("ice_egg_boiler_pult",5,0,4)
unlock_card("coffee_grounds",5,0,4)
unlock_card("hamburger",5,0,4)
unlock_card("steel_wool",5,0,4)
unlock_card("wooden_cork",5,0,4)
unlock_card("sausage",5,0,4)
global.save_data.player.gold = 20000000
global.save_data.player.level = 11
global.save_data.unlocked_items.max_card_level = 5
global.save_data.unlocked_items.max_skill_level = 4
global.save_data.unlocked_items.max_gem_level = 4
global.save_data.unlocked_items.max_slot = 11
global.save_data.unlocked_items.shovel = "normal"

unlock_weapon("star_gun")
unlock_weapon("ice_gun")
unlock_weapon("cat_gun")
unlock_weapon("mighty_gun")
unlock_weapon("steel_claw_gun")
unlock_weapon("bubble_gun")
unlock_weapon("cookie_shield")
unlock_weapon("oreo_shield")
unlock_weapon("cut_cake_shield")
unlock_weapon("howitzer")
unlock_weapon("enhanced_howitzer")
unlock_gem("attack_gem")
unlock_gem("health_gem")
unlock_gem("laser_gem")
unlock_gem("bomb_gem")
unlock_gem("cateye_gem")
unlock_gem("freeze_gem")
unlock_gem("starlight_gem")
unlock_gem("power_gem")
unlock_gem("gale_gem")
unlock_gem("transform_gem")
unlock_gem("flame_recover_gem")
unlock_gem("produce_gem")
unlock_gem("slow_down_gem")
unlock_gem("bleed_gem")
unlock_gem("guard_gem")
unlock_gem("strength_gem")
global.player_name = global.save_data.player.name
global.total_time = global.save_data.player.total_time

//debug相关
if global.debug{
	global.save_data.player.gold = 9999999999
	global.save_data.player.level = 80
	global.save_data.unlocked_items.max_card_level = 16
	global.save_data.unlocked_items.max_skill_level = 8
	global.save_data.unlocked_items.max_gem_level = 15
	global.save_data.unlocked_items.max_slot = 21
	global.save_data.unlocked_items.shovel = "gold"
}

room_goto(room_menu)
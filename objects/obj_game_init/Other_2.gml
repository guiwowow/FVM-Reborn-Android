Enum_Init()
deck_init()
slots_init()
skill_registry_init();
skill_init()

// 全局植物注册表
global.plant_registry = ds_map_create();
cards_init()

global.player_name = "Player";
global.player_sprite = noone;

load_file()
reset_file()
//unlock_card("toast_bread",9,0,0)
//unlock_card("small_fire",9,1,0)
global.player_name = global.save_data.player.name

room_goto(room_menu)
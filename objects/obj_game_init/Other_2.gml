Enum_Init()
deck_init()
slots_init()
skill_registry_init();

// 全局植物注册表
global.plant_registry = ds_map_create();
cards_init()

global.player_name = "Player";
global.player_sprite = noone;

load_file()

room_goto(room_menu)
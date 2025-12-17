function level_info_island_init(){
	level_info_island_registry_init()
	register_level_info_island("cookie_island",{"name":"曲奇岛","icon":spr_levelselect_button,"spr":spr_cookie_island,"description":"欢迎来到《美食大战老鼠：重生》的第一关！\n本关没有特殊机制，出怪较少，留意滑板鼠即可。"})
	register_level_info_island("salad_island_land",{"name":"色拉岛（陆）","icon":spr_levelselect_button,"spr":spr_salad_island_land,"description":"相比上一关，本关新增了一行路径，鼠军也增强了。\n利用老鼠夹子开局积攒火苗吧。"})
	register_level_info_island("salad_island_water",{"name":"色拉岛（水）","icon":spr_levelselect_button,"spr":spr_salad_island_water,"description":"中间三行的水路上需要先放上木盘子才能放置卡片。\n注意，投手和低矮卡片可以直接攻击到潜水鼠。"})
	register_level_info_island("mousse_island",{"name":"慕斯岛","icon":spr_levelselect_button,"spr":spr_mousse_island,"description":"夜间天上不再掉落火苗，需要依赖酒杯灯和咖啡杯。"})
	register_level_info_island("champagne_island_land",{"name":"香槟岛（陆）","icon":spr_levelselect_button,"spr":spr_champagne_island_land,"description":"可以利用投手卡片或咖啡喷壶来快速清理房东鼠。"})
	register_level_info_island("champagne_island_water",{"name":"香槟岛（水）","icon":spr_levelselect_button,"spr":spr_champagne_island_water,"description":"青蛙王子鼠的速度极快，需要提前垫卡阻止其突破防线。"})
	register_level_info_island("temple",{"name":"神殿","icon":spr_levelselect_button,"spr":spr_temple,"description":"这是美味岛的第一个皇冠关，会接连出现三个BOSS。\n牢记各种BOSS的技能，努力坚持到底吧。"})
}

// 游戏初始化脚本
function cards_init(){
	{//注册植物
		{// 注册小火炉及其升级
		// 注册small_fire
		register_plant(
		    "small_fire",
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        }
		    ]
		);

// 添加small_fire升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 1, upgrade1);

// 添加small_fire升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 2, upgrade2);

// 添加small_fire升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 3, upgrade3);

// 添加small_fire升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 4, upgrade4);

// 添加small_fire升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 5, upgrade5);

// 添加small_fire升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 6, upgrade6);

// 添加small_fire升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 7, upgrade7);

// 添加small_fire升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 8, upgrade8);

// 添加small_fire升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 9, upgrade9);

// 添加small_fire升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 10, upgrade10);

// 添加small_fire升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 11, upgrade11);

// 添加small_fire升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 12, upgrade12);

// 添加small_fire升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 13, upgrade13);

// 添加small_fire升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 14, upgrade14);

// 添加small_fire升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 15, upgrade15);

// 添加small_fire升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "description": "小火炉：生产火苗",
		            "hp": 50,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        },
		        {
		            "name": "太阳能高效炉",
		            "shape": 2,
		            "description": "太阳能高效炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 16, upgrade16);


		}
		{//注册小笼包及其升级
			// 注册xiao_long_bao
		register_plant(
		    "xiao_long_bao",
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加xiao_long_bao升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 1, upgrade1);

// 添加xiao_long_bao升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 2, upgrade2);

// 添加xiao_long_bao升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 3, upgrade3);

// 添加xiao_long_bao升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 4, upgrade4);

// 添加xiao_long_bao升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 5, upgrade5);

// 添加xiao_long_bao升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 6, upgrade6);

// 添加xiao_long_bao升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 7, upgrade7);

// 添加xiao_long_bao升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 8, upgrade8);

// 添加xiao_long_bao升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 9, upgrade9);

// 添加xiao_long_bao升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 10, upgrade10);

// 添加xiao_long_bao升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 11, upgrade11);

// 添加xiao_long_bao升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 12, upgrade12);

// 添加xiao_long_bao升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 13, upgrade13);

// 添加xiao_long_bao升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 14, upgrade14);

// 添加xiao_long_bao升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 15, upgrade15);

// 添加xiao_long_bao升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "小笼包",
		            "shape": 0,
		            "description": "小笼包：发射包子攻击敌人",
		            "hp": 50,
		            "cost": 100,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("xiao_long_bao", 16, upgrade16);


		}
		{//注册土司面包及其升级
		// 注册toast_bread
		register_plant(
		    "toast_bread",
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 500,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0
		        }
		    ]
		);

// 添加toast_bread升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 540,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 1, upgrade1);

// 添加toast_bread升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 580,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 2, upgrade2);

// 添加toast_bread升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 620,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 3, upgrade3);

// 添加toast_bread升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 680,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 4, upgrade4);

// 添加toast_bread升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 740,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 5, upgrade5);

// 添加toast_bread升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 800,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 6, upgrade6);

// 添加toast_bread升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 880,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 7, upgrade7);

// 添加toast_bread升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 960,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 8, upgrade8);

// 添加toast_bread升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1040,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 9, upgrade9);

// 添加toast_bread升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1140,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 10, upgrade10);

// 添加toast_bread升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1240,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 11, upgrade11);

// 添加toast_bread升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1340,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 12, upgrade12);

// 添加toast_bread升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1440,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 13, upgrade13);

// 添加toast_bread升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1540,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 14, upgrade14);

// 添加toast_bread升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1640,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 15, upgrade15);

// 添加toast_bread升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "土司面包",
		            "shape": 0,
		            "description": "土司面包：阻挡敌人前进",
		            "hp": 1740,
		            "cost": 50,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("toast_bread", 16, upgrade16);


	}
		{//注册面粉袋及其升级
		// 注册flour_sack
		register_plant(
		    "flour_sack",
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 0
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 0
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 0
		        }
		    ]
		);

// 添加flour_sack升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 1, upgrade1);

// 添加flour_sack升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1680,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1680,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1680,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 2, upgrade2);

// 添加flour_sack升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1620,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1620,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1620,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 3, upgrade3);

// 添加flour_sack升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 4, upgrade4);

// 添加flour_sack升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1500,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1500,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1500,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 5, upgrade5);

// 添加flour_sack升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1440,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1440,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1440,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 6, upgrade6);

// 添加flour_sack升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1320,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1320,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1320,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 7, upgrade7);

// 添加flour_sack升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 8, upgrade8);

// 添加flour_sack升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1080,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1080,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1080,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 9, upgrade9);

// 添加flour_sack升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 960,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 960,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 960,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 10, upgrade10);

// 添加flour_sack升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 11, upgrade11);

// 添加flour_sack升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 720,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 720,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 720,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 12, upgrade12);

// 添加flour_sack升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 600,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 600,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 600,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 13, upgrade13);

// 添加flour_sack升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 540,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 540,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 540,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 14, upgrade14);

// 添加flour_sack升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 480,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 15, upgrade15);

// 添加flour_sack升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "面粉袋",
		            "shape": 0,
		            "description": "面粉袋：压死老鼠",
		            "hp": 500,
		            "cost": 50,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "影分身袋",
		            "shape": 1,
		            "description": "影分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 75,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "乾坤分身袋",
		            "shape": 2,
		            "description": "乾坤分身袋：压死老鼠",
		            "hp": 20000,
		            "cost": 100,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 16, upgrade16);


	}	
	}
}
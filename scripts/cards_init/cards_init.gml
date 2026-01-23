
// 游戏初始化脚本
function cards_init(){
	{//注册植物
		{//注册小火炉及其升级
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
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
		            "range": 2,
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
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("flour_sack", 16, upgrade16);


	}	
		{//注册双层小笼包
			// 注册double_long_bao
		register_plant(
		    "double_long_bao",
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 10,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加double_long_bao升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 12,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 1, upgrade1);

// 添加double_long_bao升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 14,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 2, upgrade2);

// 添加double_long_bao升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 16,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 3, upgrade3);

// 添加double_long_bao升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 18,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 4, upgrade4);

// 添加double_long_bao升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 20,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 5, upgrade5);

// 添加double_long_bao升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 22,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 6, upgrade6);

// 添加double_long_bao升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 26,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 7, upgrade7);

// 添加double_long_bao升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 32,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 8, upgrade8);

// 添加double_long_bao升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 40,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 9, upgrade9);

// 添加double_long_bao升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 55,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 10, upgrade10);

// 添加double_long_bao升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 11, upgrade11);

// 添加double_long_bao升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 85,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 12, upgrade12);

// 添加double_long_bao升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 13, upgrade13);

// 添加double_long_bao升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 115,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 14, upgrade14);

// 添加double_long_bao升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 130,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 15, upgrade15);

// 添加double_long_bao升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "双层小笼包",
		            "shape": 0,
		            "description": "双层小笼包：发射两发包子攻击敌人",
		            "hp": 50,
		            "cost": 200,
		            "atk": 145,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("double_long_bao", 16, upgrade16);


		}
		{//注册老鼠夹子
			// 注册mouse_clip
		register_plant(
		    "mouse_clip",
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 900
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 900
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 900
		        }
		    ]
		);

// 添加mouse_clip升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 840,
		            "level": 1
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 840,
		            "level": 1
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 840,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 1, upgrade1);

// 添加mouse_clip升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 780,
		            "level": 2
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 780,
		            "level": 2
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 780,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 2, upgrade2);

// 添加mouse_clip升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 720,
		            "level": 3
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 720,
		            "level": 3
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 720,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 3, upgrade3);

// 添加mouse_clip升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 660,
		            "level": 4
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 660,
		            "level": 4
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 660,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 4, upgrade4);

// 添加mouse_clip升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 600,
		            "level": 5
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 600,
		            "level": 5
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 600,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 5, upgrade5);

// 添加mouse_clip升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 540,
		            "level": 6
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 540,
		            "level": 6
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 540,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 6, upgrade6);

// 添加mouse_clip升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 480,
		            "level": 7
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 480,
		            "level": 7
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 480,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 7, upgrade7);

// 添加mouse_clip升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 420,
		            "level": 8
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 420,
		            "level": 8
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 420,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 8, upgrade8);

// 添加mouse_clip升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 360,
		            "level": 9
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 360,
		            "level": 9
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 360,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 9, upgrade9);

// 添加mouse_clip升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 300,
		            "level": 10
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 300,
		            "level": 10
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 300,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 10, upgrade10);

// 添加mouse_clip升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 240,
		            "level": 11
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 240,
		            "level": 11
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 240,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 11, upgrade11);

// 添加mouse_clip升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 180,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 12, upgrade12);

// 添加mouse_clip升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 120,
		            "level": 13
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 120,
		            "level": 13
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 120,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 13, upgrade13);

// 添加mouse_clip升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 14
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 14
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 14, upgrade14);

// 添加mouse_clip升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 15
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 15
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 60,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 15, upgrade15);

// 添加mouse_clip升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "老鼠夹子",
		            "shape": 0,
		            "description": "老鼠夹子：准备完成后，会在地面敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 30,
		            "level": 16
		        },
		        {
		            "name": "多用老鼠夹子",
		            "shape": 1,
		            "description": "多用老鼠夹子：准备完成后，会在敌人接触时爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 30,
		            "level": 16
		        },
		        {
		            "name": "黑猫鼠夹",
		            "shape": 2,
		            "description": "黑猫鼠夹：准备完成后，会在敌人接触时产生3*4爆炸",
		            "hp": 50,
		            "cost": 25,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1800,
		            "cycle": 30,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("mouse_clip", 16, upgrade16);


		}
		{//注册可乐炸弹
			// 注册coke_bomb
		register_plant(
		    "coke_bomb",
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 11
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 11
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 11
		        }
		    ]
		);

// 添加coke_bomb升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2880,
		            "cycle": 11,
		            "level": 1
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2880,
		            "cycle": 11,
		            "level": 1
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2880,
		            "cycle": 11,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 1, upgrade1);

// 添加coke_bomb升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2760,
		            "cycle": 11,
		            "level": 2
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2760,
		            "cycle": 11,
		            "level": 2
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2760,
		            "cycle": 11,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 2, upgrade2);

// 添加coke_bomb升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2640,
		            "cycle": 11,
		            "level": 3
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2640,
		            "cycle": 11,
		            "level": 3
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2640,
		            "cycle": 11,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 3, upgrade3);

// 添加coke_bomb升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2520,
		            "cycle": 11,
		            "level": 4
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2520,
		            "cycle": 11,
		            "level": 4
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2520,
		            "cycle": 11,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 4, upgrade4);

// 添加coke_bomb升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2400,
		            "cycle": 11,
		            "level": 5
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2400,
		            "cycle": 11,
		            "level": 5
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2400,
		            "cycle": 11,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 5, upgrade5);

// 添加coke_bomb升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2280,
		            "cycle": 11,
		            "level": 6
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2280,
		            "cycle": 11,
		            "level": 6
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2280,
		            "cycle": 11,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 6, upgrade6);

// 添加coke_bomb升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2100,
		            "cycle": 11,
		            "level": 7
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2100,
		            "cycle": 11,
		            "level": 7
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 2100,
		            "cycle": 11,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 7, upgrade7);

// 添加coke_bomb升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1920,
		            "cycle": 11,
		            "level": 8
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1920,
		            "cycle": 11,
		            "level": 8
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1920,
		            "cycle": 11,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 8, upgrade8);

// 添加coke_bomb升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 11,
		            "level": 9
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 11,
		            "level": 9
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1740,
		            "cycle": 11,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 9, upgrade9);

// 添加coke_bomb升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 11,
		            "level": 10
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 11,
		            "level": 10
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1560,
		            "cycle": 11,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 10, upgrade10);

// 添加coke_bomb升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1380,
		            "cycle": 11,
		            "level": 11
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1380,
		            "cycle": 11,
		            "level": 11
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1380,
		            "cycle": 11,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 11, upgrade11);

// 添加coke_bomb升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 11,
		            "level": 12
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 11,
		            "level": 12
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1200,
		            "cycle": 11,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 12, upgrade12);

// 添加coke_bomb升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1020,
		            "cycle": 11,
		            "level": 13
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1020,
		            "cycle": 11,
		            "level": 13
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 1020,
		            "cycle": 11,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 13, upgrade13);

// 添加coke_bomb升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 11,
		            "level": 14
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 11,
		            "level": 14
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 840,
		            "cycle": 11,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 14, upgrade14);

// 添加coke_bomb升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 660,
		            "cycle": 11,
		            "level": 15
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 660,
		            "cycle": 11,
		            "level": 15
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 660,
		            "cycle": 11,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 15, upgrade15);

// 添加coke_bomb升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "可乐炸弹",
		            "shape": 0,
		            "description": "可乐炸弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 11,
		            "level": 16
		        },
		        {
		            "name": "云爆可乐弹",
		            "shape": 1,
		            "description": "云爆可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 175,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 11,
		            "level": 16
		        },
		        {
		            "name": "燃烧可乐弹",
		            "shape": 2,
		            "description": "燃烧可乐弹：3*4范围爆炸",
		            "hp": 20000,
		            "cost": 225,
		            "atk": 900,
		            "range": 1,
		            "cooldown": 420,
		            "cycle": 11,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("coke_bomb", 16, upgrade16);


		}
		{//注册木盘子
			// 注册wooden_plate
		register_plant(
		    "wooden_plate",
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 50,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 100,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        }
		    ]
		);

// 添加wooden_plate升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 60,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 60,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 120,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 1, upgrade1);

// 添加wooden_plate升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 70,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 70,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 140,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 2, upgrade2);

// 添加wooden_plate升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 80,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 80,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 160,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 3, upgrade3);

// 添加wooden_plate升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 90,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 90,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 180,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 4, upgrade4);

// 添加wooden_plate升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 100,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 100,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 200,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 5, upgrade5);

// 添加wooden_plate升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 110,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 110,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 220,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 6, upgrade6);

// 添加wooden_plate升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 130,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 130,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 260,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 7, upgrade7);

// 添加wooden_plate升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 150,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 150,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 300,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 8, upgrade8);

// 添加wooden_plate升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 170,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 170,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 340,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 9, upgrade9);

// 添加wooden_plate升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 200,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 200,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 400,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 10, upgrade10);

// 添加wooden_plate升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 230,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 230,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 460,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 11, upgrade11);

// 添加wooden_plate升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 260,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 260,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 520,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 12, upgrade12);

// 添加wooden_plate升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 290,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 290,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 580,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 13, upgrade13);

// 添加wooden_plate升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 320,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 320,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 640,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 14, upgrade14);

// 添加wooden_plate升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 350,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 350,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 700,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 15, upgrade15);

// 添加wooden_plate升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "木盘子",
		            "shape": 0,
		            "description": "木盘子：在水上承载卡片",
		            "hp": 380,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "友情木盘子",
		            "shape": 1,
		            "description": "友情木盘子：在水上承载卡片",
		            "hp": 380,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "坚韧木盘子",
		            "shape": 2,
		            "description": "坚韧木盘子：在水上承载卡片",
		            "hp": 760,
		            "cost": 0,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("wooden_plate", 16, upgrade16);


		}
		{//注册冰冻小笼包
			// 注册ice_long_bao
		register_plant(
		    "ice_long_bao",
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加ice_long_bao升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 1, upgrade1);

// 添加ice_long_bao升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 2, upgrade2);

// 添加ice_long_bao升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 3, upgrade3);

// 添加ice_long_bao升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 4, upgrade4);

// 添加ice_long_bao升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 5, upgrade5);

// 添加ice_long_bao升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 6, upgrade6);

// 添加ice_long_bao升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 7, upgrade7);

// 添加ice_long_bao升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 8, upgrade8);

// 添加ice_long_bao升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 9, upgrade9);

// 添加ice_long_bao升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 10, upgrade10);

// 添加ice_long_bao升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 11, upgrade11);

// 添加ice_long_bao升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 12, upgrade12);

// 添加ice_long_bao升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 13, upgrade13);

// 添加ice_long_bao升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 14, upgrade14);

// 添加ice_long_bao升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 15, upgrade15);

// 添加ice_long_bao升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "冰冻小笼包",
		            "shape": 0,
		            "description": "冰冻小笼包：发射减速冰包子攻击敌人",
		            "hp": 50,
		            "cost": 175,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("ice_long_bao", 16, upgrade16);


		}
		{//注册酒杯灯
			// 注册goblet_lamp
		register_plant(
		    "goblet_lamp",
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 25,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        },
		        {
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1500
		        }
		    ]
		);

// 添加goblet_lamp升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 1, upgrade1);

// 添加goblet_lamp升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 2, upgrade2);

// 添加goblet_lamp升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 3, upgrade3);

// 添加goblet_lamp升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 4, upgrade4);

// 添加goblet_lamp升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 5, upgrade5);

// 添加goblet_lamp升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 6, upgrade6);

// 添加goblet_lamp升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 7, upgrade7);

// 添加goblet_lamp升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 8, upgrade8);

// 添加goblet_lamp升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 9, upgrade9);

// 添加goblet_lamp升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 10, upgrade10);

// 添加goblet_lamp升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 11, upgrade11);

// 添加goblet_lamp升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 12, upgrade12);

// 添加goblet_lamp升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 13, upgrade13);

// 添加goblet_lamp升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 14, upgrade14);

// 添加goblet_lamp升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 15, upgrade15);

// 添加goblet_lamp升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "酒杯灯",
		            "shape": 0,
		            "description": "酒杯灯：先生产少量火苗，一段时间后正常",
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
		            "name": "节能灯",
		            "shape": 1,
		            "description": "节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        },
		        {
		            "name": "高效节能灯",
		            "shape": 2,
		            "description": "高效节能灯：先生产少量火苗，一段时间后正常",
		            "hp": 50,
		            "cost": 15,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("goblet_lamp", 16, upgrade16);


		}
		{//注册咖啡杯
			// 注册coffee_cup
		register_plant(
		    "coffee_cup",
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 10,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 13,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 13,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加coffee_cup升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 12,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 15,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 15,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 1, upgrade1);

// 添加coffee_cup升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 14,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 18,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 2, upgrade2);

// 添加coffee_cup升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 16,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 20,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 3, upgrade3);

// 添加coffee_cup升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 18,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 23,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 23,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 4, upgrade4);

// 添加coffee_cup升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 20,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 26,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 5, upgrade5);

// 添加coffee_cup升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 22,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 28,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 28,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 6, upgrade6);

// 添加coffee_cup升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 26,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 33,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 33,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 7, upgrade7);

// 添加coffee_cup升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 32,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 41,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 41,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 8, upgrade8);

// 添加coffee_cup升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 40,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 52,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 52,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 9, upgrade9);

// 添加coffee_cup升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 55,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 71,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 71,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 10, upgrade10);

// 添加coffee_cup升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 70,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 91,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 91,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 11, upgrade11);

// 添加coffee_cup升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 85,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 110,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 110,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 12, upgrade12);

// 添加coffee_cup升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 100,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 130,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 13, upgrade13);

// 添加coffee_cup升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 115,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 149,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 149,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 14, upgrade14);

// 添加coffee_cup升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 130,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 169,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 169,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 15, upgrade15);

// 添加coffee_cup升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡杯",
		            "shape": 0,
		            "description": "咖啡杯：攻击三格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 145,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "花纹咖啡杯",
		            "shape": 1,
		            "description": "花纹咖啡杯：攻击三格内敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 188,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "骨瓷咖啡杯",
		            "shape": 2,
		            "description": "骨瓷咖啡杯：攻击一行敌人",
		            "hp": 50,
		            "cost": 0,
		            "atk": 188,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("coffee_cup", 16, upgrade16);

	
		}
		{//注册色拉投手
			// 注册salad_pult
		register_plant(
		    "salad_pult",
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        }
		    ]
		);

// 添加salad_pult升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 1, upgrade1);

// 添加salad_pult升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 50,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 50,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 50,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 2, upgrade2);

// 添加salad_pult升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 60,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 60,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 60,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 3, upgrade3);

// 添加salad_pult升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 4, upgrade4);

// 添加salad_pult升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 80,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 80,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 80,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 5, upgrade5);

// 添加salad_pult升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 6, upgrade6);

// 添加salad_pult升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 7, upgrade7);

// 添加salad_pult升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 8, upgrade8);

// 添加salad_pult升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 160,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 160,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 160,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 9, upgrade9);

// 添加salad_pult升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 190,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 190,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 190,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 10, upgrade10);

// 添加salad_pult升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 220,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 220,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 220,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 11, upgrade11);

// 添加salad_pult升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 250,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 250,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 250,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 12, upgrade12);

// 添加salad_pult升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 280,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 280,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 280,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 13, upgrade13);

// 添加salad_pult升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 310,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 310,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 310,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 14, upgrade14);

// 添加salad_pult升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 340,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 340,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 340,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 15, upgrade15);

// 添加salad_pult升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "色拉投手",
		            "shape": 0,
		            "description": "色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 370,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "果蔬色拉投手",
		            "shape": 1,
		            "description": "果蔬色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 370,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "凯撒色拉投手",
		            "shape": 2,
		            "description": "凯撒色拉投手：投掷可弹射的番茄",
		            "hp": 50,
		            "cost": 100,
		            "atk": 370,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("salad_pult", 16, upgrade16);


		}
		{//注册咖啡喷壶
			// 注册coffee_pot
		register_plant(
		    "coffee_pot",
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 10,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 13,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 13,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加coffee_pot升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 12,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 15,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 15,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 1, upgrade1);

// 添加coffee_pot升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 14,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 18,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 2, upgrade2);

// 添加coffee_pot升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 16,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 20,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 3, upgrade3);

// 添加coffee_pot升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 18,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 23,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 23,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 4, upgrade4);

// 添加coffee_pot升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 20,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 26,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 5, upgrade5);

// 添加coffee_pot升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 22,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 28,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 28,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 6, upgrade6);

// 添加coffee_pot升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 26,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 33,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 33,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 7, upgrade7);

// 添加coffee_pot升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 32,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 41,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 41,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 8, upgrade8);

// 添加coffee_pot升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 40,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 52,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 52,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 9, upgrade9);

// 添加coffee_pot升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 55,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 71,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 71,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 10, upgrade10);

// 添加coffee_pot升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 70,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 91,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 91,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 11, upgrade11);

// 添加coffee_pot升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 85,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 110,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 110,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 12, upgrade12);

// 添加coffee_pot升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 100,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 130,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 13, upgrade13);

// 添加coffee_pot升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 115,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 149,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 149,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 14, upgrade14);

// 添加coffee_pot升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 130,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 169,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 169,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 15, upgrade15);

// 添加coffee_pot升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "咖啡喷壶",
		            "shape": 0,
		            "description": "咖啡喷壶：穿透攻击四格内敌人，白天会睡觉",
		            "hp": 50,
		            "cost": 75,
		            "atk": 145,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "香醇咖啡喷壶",
		            "shape": 1,
		            "description": "香醇咖啡喷壶：穿透攻击四格内敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 188,
		            "range": 4,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "红温咖啡喷壶",
		            "shape": 2,
		            "description": "红温咖啡喷壶：穿透攻击一行敌人",
		            "hp": 50,
		            "cost": 75,
		            "atk": 188,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("coffee_pot", 16, upgrade16);


		}
		{//注册巧克力面包
			// 注册chocolate_bread
		register_plant(
		    "chocolate_bread",
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1000,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1000,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0
		        }
		    ]
		);

// 添加chocolate_bread升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1050,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1050,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 1, upgrade1);

// 添加chocolate_bread升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1100,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1100,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 2, upgrade2);

// 添加chocolate_bread升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1150,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1150,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 3, upgrade3);

// 添加chocolate_bread升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1230,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1230,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 4, upgrade4);

// 添加chocolate_bread升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1310,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1310,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 5, upgrade5);

// 添加chocolate_bread升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1390,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1390,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 6, upgrade6);

// 添加chocolate_bread升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1500,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1500,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 7, upgrade7);

// 添加chocolate_bread升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1610,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1610,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 8, upgrade8);

// 添加chocolate_bread升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1720,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1720,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 9, upgrade9);

// 添加chocolate_bread升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 1820,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 1820,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 10, upgrade10);

// 添加chocolate_bread升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 2020,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 2020,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 11, upgrade11);

// 添加chocolate_bread升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 2220,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 2220,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 12, upgrade12);

// 添加chocolate_bread升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 2420,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 2420,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 13, upgrade13);

// 添加chocolate_bread升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 2620,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 2620,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 14, upgrade14);

// 添加chocolate_bread升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 2820,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 2820,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 15, upgrade15);

// 添加chocolate_bread升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "巧克力面包",
		            "shape": 0,
		            "description": "巧克力面包：阻挡敌人翻越",
		            "hp": 3020,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "德芙面包",
		            "shape": 1,
		            "description": "德芙面包：阻挡敌人翻越",
		            "hp": 3020,
		            "cost": 125,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 1800,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("chocolate_bread", 16, upgrade16);

	
		}
		{//注册水上茶杯
			// 注册water_tea_cup
		register_plant(
		    "water_tea_cup",
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 10,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78
		        }
		    ]
		);

// 添加water_tea_cup升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 12,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 1, upgrade1);

// 添加water_tea_cup升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 14,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 2, upgrade2);

// 添加water_tea_cup升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 16,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 3, upgrade3);

// 添加water_tea_cup升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 18,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 4, upgrade4);

// 添加water_tea_cup升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 20,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 5, upgrade5);

// 添加water_tea_cup升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 22,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 6, upgrade6);

// 添加water_tea_cup升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 26,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 7, upgrade7);

// 添加water_tea_cup升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 32,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 8, upgrade8);

// 添加water_tea_cup升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 40,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 9, upgrade9);

// 添加water_tea_cup升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 55,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 10, upgrade10);

// 添加water_tea_cup升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 70,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 11, upgrade11);

// 添加water_tea_cup升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 85,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 12, upgrade12);

// 添加water_tea_cup升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 100,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 13, upgrade13);

// 添加water_tea_cup升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 115,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 14, upgrade14);

// 添加water_tea_cup升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 130,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 15, upgrade15);

// 添加water_tea_cup升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "水上茶杯",
		            "shape": 0,
		            "description": "水上茶杯：在水上攻击三格内敌人，白天睡觉",
		            "hp": 50,
		            "cost": 0,
		            "atk": 145,
		            "range": 3,
		            "cooldown": 600,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("water_tea_cup", 16, upgrade16);


		}
		{//注册冰桶炸弹
			// 注册ice_bucket_bomb
		register_plant(
		    "ice_bucket_bomb",
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 240
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 240
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 240
		        }
		    ]
		);

// 添加ice_bucket_bomb升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2880,
		            "cycle": 240,
		            "level": 1
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2880,
		            "cycle": 240,
		            "level": 1
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2880,
		            "cycle": 240,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 1, upgrade1);

// 添加ice_bucket_bomb升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2760,
		            "cycle": 240,
		            "level": 2
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2760,
		            "cycle": 240,
		            "level": 2
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2760,
		            "cycle": 240,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 2, upgrade2);

// 添加ice_bucket_bomb升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2640,
		            "cycle": 240,
		            "level": 3
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2640,
		            "cycle": 240,
		            "level": 3
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2640,
		            "cycle": 240,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 3, upgrade3);

// 添加ice_bucket_bomb升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2520,
		            "cycle": 240,
		            "level": 4
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2520,
		            "cycle": 240,
		            "level": 4
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2520,
		            "cycle": 240,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 4, upgrade4);

// 添加ice_bucket_bomb升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2400,
		            "cycle": 240,
		            "level": 5
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2400,
		            "cycle": 240,
		            "level": 5
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2400,
		            "cycle": 240,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 5, upgrade5);

// 添加ice_bucket_bomb升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2280,
		            "cycle": 240,
		            "level": 6
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2280,
		            "cycle": 240,
		            "level": 6
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2280,
		            "cycle": 240,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 6, upgrade6);

// 添加ice_bucket_bomb升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 2100,
		            "cycle": 240,
		            "level": 7
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2100,
		            "cycle": 240,
		            "level": 7
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 2100,
		            "cycle": 240,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 7, upgrade7);

// 添加ice_bucket_bomb升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1920,
		            "cycle": 240,
		            "level": 8
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1920,
		            "cycle": 240,
		            "level": 8
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1920,
		            "cycle": 240,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 8, upgrade8);

// 添加ice_bucket_bomb升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1740,
		            "cycle": 240,
		            "level": 9
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1740,
		            "cycle": 240,
		            "level": 9
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1740,
		            "cycle": 240,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 9, upgrade9);

// 添加ice_bucket_bomb升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1560,
		            "cycle": 240,
		            "level": 10
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1560,
		            "cycle": 240,
		            "level": 10
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1560,
		            "cycle": 240,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 10, upgrade10);

// 添加ice_bucket_bomb升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1380,
		            "cycle": 240,
		            "level": 11
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1380,
		            "cycle": 240,
		            "level": 11
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1380,
		            "cycle": 240,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 11, upgrade11);

// 添加ice_bucket_bomb升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1200,
		            "cycle": 240,
		            "level": 12
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1200,
		            "cycle": 240,
		            "level": 12
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1200,
		            "cycle": 240,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 12, upgrade12);

// 添加ice_bucket_bomb升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 1020,
		            "cycle": 240,
		            "level": 13
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1020,
		            "cycle": 240,
		            "level": 13
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 1020,
		            "cycle": 240,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 13, upgrade13);

// 添加ice_bucket_bomb升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 840,
		            "cycle": 240,
		            "level": 14
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 840,
		            "cycle": 240,
		            "level": 14
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 840,
		            "cycle": 240,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 14, upgrade14);

// 添加ice_bucket_bomb升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 660,
		            "cycle": 240,
		            "level": 15
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 660,
		            "cycle": 240,
		            "level": 15
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 660,
		            "cycle": 240,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 15, upgrade15);

// 添加ice_bucket_bomb升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "冰桶炸弹",
		            "shape": 0,
		            "description": "冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 240,
		            "level": 16
		        },
		        {
		            "name": "酸橙冰桶炸弹",
		            "shape": 1,
		            "description": "酸橙冰桶炸弹：冰冻并伤害全屏敌人",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 240,
		            "level": 16
		        },
		        {
		            "name": "杂果冰桶炸弹",
		            "shape": 2,
		            "description": "杂果冰桶炸弹：冰冻并伤害全屏敌人。3*4范围冰爆",
		            "hp": 250,
		            "cost": 75,
		            "atk": 300,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 240,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("ice_bucket_bomb", 16, upgrade16);


		}
		{//注册臭豆腐
			// 注册stinky_tofu_pult
		register_plant(
		    "stinky_tofu_pult",
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 25,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 25,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 25,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180
		        }
		    ]
		);

// 添加stinky_tofu_pult升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 30,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 1, upgrade1);

// 添加stinky_tofu_pult升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 35,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 35,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 35,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 2, upgrade2);

// 添加stinky_tofu_pult升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 3, upgrade3);

// 添加stinky_tofu_pult升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 4, upgrade4);

// 添加stinky_tofu_pult升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 5, upgrade5);

// 添加stinky_tofu_pult升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 6, upgrade6);

// 添加stinky_tofu_pult升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 7, upgrade7);

// 添加stinky_tofu_pult升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 120,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 8, upgrade8);

// 添加stinky_tofu_pult升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 140,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 9, upgrade9);

// 添加stinky_tofu_pult升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 170,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 170,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 170,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 10, upgrade10);

// 添加stinky_tofu_pult升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 200,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 200,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 200,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 11, upgrade11);

// 添加stinky_tofu_pult升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 230,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 230,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 230,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 12, upgrade12);

// 添加stinky_tofu_pult升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 260,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 260,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 260,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 13, upgrade13);

// 添加stinky_tofu_pult升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 290,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 290,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 290,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 14, upgrade14);

// 添加stinky_tofu_pult升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 320,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 320,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 320,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 15, upgrade15);

// 添加stinky_tofu_pult升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "臭豆腐投手",
		            "shape": 0,
		            "description": "臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 350,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "什锦臭豆腐投手",
		            "shape": 1,
		            "description": "什锦臭豆腐投手：投掷能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 350,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "铁板臭豆腐投手",
		            "shape": 2,
		            "description": "铁板臭豆腐投手：投掷两块能产生毒雾的豆腐",
		            "hp": 50,
		            "cost": 150,
		            "atk": 350,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("stinky_tofu_pult", 16, upgrade16);


		}
		{//注册猫猫盒
			// 注册cat_box
		register_plant(
		    "cat_box",
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 50,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        }
		    ]
		);

// 添加cat_box升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 70,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 1, upgrade1);

// 添加cat_box升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 90,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 2, upgrade2);

// 添加cat_box升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 110,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 3, upgrade3);

// 添加cat_box升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 130,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 4, upgrade4);

// 添加cat_box升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 150,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 5, upgrade5);

// 添加cat_box升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 170,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 6, upgrade6);

// 添加cat_box升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 200,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 7, upgrade7);

// 添加cat_box升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 230,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 8, upgrade8);

// 添加cat_box升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 260,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 9, upgrade9);

// 添加cat_box升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 300,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 10, upgrade10);

// 添加cat_box升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 340,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 11, upgrade11);

// 添加cat_box升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 380,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 12, upgrade12);

// 添加cat_box升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 420,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 13, upgrade13);

// 添加cat_box升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 460,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 14, upgrade14);

// 添加cat_box升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 500,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 15, upgrade15);

// 添加cat_box升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "猫猫盒",
		            "shape": 0,
		            "description": "猫猫盒：恐吓老鼠至相邻行",
		            "hp": 540,
		            "cost": 100,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("cat_box", 16, upgrade16);

	
		}
		{//注册开水壶炸弹
			// 注册kettle_bomb
		register_plant(
		    "kettle_bomb",
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 3000,
		            "cycle": 0
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 3000,
		            "cycle": 0
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 3000,
		            "cycle": 0
		        }
		    ]
		);

// 添加kettle_bomb升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 1, upgrade1);

// 添加kettle_bomb升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 2, upgrade2);

// 添加kettle_bomb升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 3, upgrade3);

// 添加kettle_bomb升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 4, upgrade4);

// 添加kettle_bomb升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 5, upgrade5);

// 添加kettle_bomb升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 6, upgrade6);

// 添加kettle_bomb升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 7, upgrade7);

// 添加kettle_bomb升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 8, upgrade8);

// 添加kettle_bomb升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 9, upgrade9);

// 添加kettle_bomb升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 10, upgrade10);

// 添加kettle_bomb升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 11, upgrade11);

// 添加kettle_bomb升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 12, upgrade12);

// 添加kettle_bomb升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 13, upgrade13);

// 添加kettle_bomb升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 14, upgrade14);

// 添加kettle_bomb升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 15, upgrade15);

// 添加kettle_bomb升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "开水壶炸弹",
		            "shape": 0,
		            "description": "开水壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 275,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "汽油壶炸弹",
		            "shape": 1,
		            "description": "汽油壶炸弹：5*5范围爆炸，白天睡觉",
		            "hp": 2500,
		            "cost": 300,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "汽油干冰弹",
		            "shape": 2,
		            "description": "汽油干冰弹：5*5范围爆炸和减速",
		            "hp": 2500,
		            "cost": 350,
		            "atk": 900,
		            "range": 3,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("kettle_bomb", 16, upgrade16);


		}
		{//注册鱼刺
			// 注册fishbone
		register_plant(
		    "fishbone",
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 10,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加fishbone升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 12,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 1, upgrade1);

// 添加fishbone升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 14,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 2, upgrade2);

// 添加fishbone升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 16,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 3, upgrade3);

// 添加fishbone升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 18,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 4, upgrade4);

// 添加fishbone升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 5, upgrade5);

// 添加fishbone升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 22,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 6, upgrade6);

// 添加fishbone升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 26,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 7, upgrade7);

// 添加fishbone升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 8, upgrade8);

// 添加fishbone升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 9, upgrade9);

// 添加fishbone升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 55,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 10, upgrade10);

// 添加fishbone升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 70,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 11, upgrade11);

// 添加fishbone升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 85,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 12, upgrade12);

// 添加fishbone升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 100,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 13, upgrade13);

// 添加fishbone升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 115,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 14, upgrade14);

// 添加fishbone升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 130,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 15, upgrade15);

// 添加fishbone升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "鱼刺",
		            "shape": 0,
		            "description": "鱼刺：伤害踩到它的敌人，卡坏垃圾车",
		            "hp": 50,
		            "cost": 100,
		            "atk": 145,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("fishbone", 16, upgrade16);


		}
		{//注册三线酒架
			// 注册triple_wine_rack
		register_plant(
		    "triple_wine_rack",
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加triple_wine_rack升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 1, upgrade1);

// 添加triple_wine_rack升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 2, upgrade2);

// 添加triple_wine_rack升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 3, upgrade3);

// 添加triple_wine_rack升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 4, upgrade4);

// 添加triple_wine_rack升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 5, upgrade5);

// 添加triple_wine_rack升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 6, upgrade6);

// 添加triple_wine_rack升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 7, upgrade7);

// 添加triple_wine_rack升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 8, upgrade8);

// 添加triple_wine_rack升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 9, upgrade9);

// 添加triple_wine_rack升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 10, upgrade10);

// 添加triple_wine_rack升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 11, upgrade11);

// 添加triple_wine_rack升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 12, upgrade12);

// 添加triple_wine_rack升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 13, upgrade13);

// 添加triple_wine_rack升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 14, upgrade14);

// 添加triple_wine_rack升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 15, upgrade15);

// 添加triple_wine_rack升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "三线酒架",
		            "shape": 0,
		            "description": "三线酒架：向前方三行发射3发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "强力三线酒架",
		            "shape": 1,
		            "description": "强力三线酒架：向前方三行发射4发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "终结者酒架",
		            "shape": 2,
		            "description": "终结者酒架：向前方三行发射6发葡萄酒弹",
		            "hp": 50,
		            "cost": 325,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("triple_wine_rack", 16, upgrade16);


		}
		{//注册火盆
			// 注册brazier
		register_plant(
		    "brazier",
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.400,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0
		        }
		    ]
		);

// 添加brazier升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.100,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.100,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.520,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("brazier", 1, upgrade1);

// 添加brazier升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.640,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("brazier", 2, upgrade2);

// 添加brazier升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.300,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.300,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.760,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("brazier", 3, upgrade3);

// 添加brazier升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.400,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.400,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.880,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("brazier", 4, upgrade4);

// 添加brazier升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.500,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.500,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("brazier", 5, upgrade5);

// 添加brazier升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.600,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.600,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.120,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("brazier", 6, upgrade6);

// 添加brazier升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.650,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.650,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.180,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("brazier", 7, upgrade7);

// 添加brazier升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.700,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.700,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.240,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("brazier", 8, upgrade8);

// 添加brazier升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 2.800,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 2.800,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.360,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("brazier", 9, upgrade9);

// 添加brazier升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 3.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.600,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("brazier", 10, upgrade10);

// 添加brazier升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 3.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.840,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("brazier", 11, upgrade11);

// 添加brazier升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 3.400,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.400,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.080,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("brazier", 12, upgrade12);

// 添加brazier升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 3.600,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.600,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.320,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("brazier", 13, upgrade13);

// 添加brazier升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 3.800,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 3.800,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.560,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("brazier", 14, upgrade14);

// 添加brazier升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 4.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.000,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.800,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("brazier", 15, upgrade15);

// 添加brazier升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "火盆",
		            "shape": 0,
		            "description": "火盆：点燃子弹",
		            "hp": 50,
		            "cost": 175,
		            "atk": 4.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "电子烤盘",
		            "shape": 1,
		            "description": "电子烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 4.200,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "岩烧烤盘",
		            "shape": 2,
		            "description": "岩烧烤盘：点燃子弹",
		            "hp": 250,
		            "cost": 175,
		            "atk": 5.040,
		            "range": 0,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("brazier", 16, upgrade16);


		}
		{//注册大火炉
			// 注册large_fire
		register_plant(
		    "large_fire",
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1500
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1500
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1500
		        }
		    ]
		);

// 添加large_fire升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1440,
		            "level": 1,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 1, upgrade1);

// 添加large_fire升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1380,
		            "level": 2,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 2, upgrade2);

// 添加large_fire升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1320,
		            "level": 3,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 3, upgrade3);

// 添加large_fire升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1260,
		            "level": 4,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 4, upgrade4);

// 添加large_fire升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1200,
		            "level": 5,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 5, upgrade5);

// 添加large_fire升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1140,
		            "level": 6,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 6, upgrade6);

// 添加large_fire升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1080,
		            "level": 7,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 7, upgrade7);

// 添加large_fire升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 1020,
		            "level": 8,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 8, upgrade8);

// 添加large_fire升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 960,
		            "level": 9,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 9, upgrade9);

// 添加large_fire升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 900,
		            "level": 10,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 10, upgrade10);

// 添加large_fire升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 840,
		            "level": 11,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 11, upgrade11);

// 添加large_fire升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 780,
		            "level": 12,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 12, upgrade12);

// 添加large_fire升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 720,
		            "level": 13,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 13, upgrade13);

// 添加large_fire升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 660,
		            "level": 14,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 14, upgrade14);

// 添加large_fire升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 600,
		            "level": 15,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 15, upgrade15);

// 添加large_fire升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "大火炉",
		            "shape": 0,
		            "description": "大火炉：一次生产两朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        },
		        {
		            "name": "高能火炉",
		            "shape": 1,
		            "description": "高能火炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        },
		        {
		            "name": "超能燃气炉",
		            "shape": 2,
		            "description": "超能燃气炉：一次生产三朵火苗",
		            "hp": 50,
		            "cost": 150,
		            "atk": 0,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 540,
		            "level": 16,
		            "flame_produce": 25
		        }
		    ]
		);

		add_plant_upgrade("large_fire", 16, upgrade16);


		}
		{//注册钢鱼刺
			// 注册iron_fishbone
		register_plant(
		    "iron_fishbone",
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78
		        }
		    ]
		);

// 添加iron_fishbone升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 24,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 24,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 24,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 1, upgrade1);

// 添加iron_fishbone升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 28,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 28,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 28,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 2, upgrade2);

// 添加iron_fishbone升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 3, upgrade3);

// 添加iron_fishbone升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 36,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 36,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 36,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 4, upgrade4);

// 添加iron_fishbone升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 5, upgrade5);

// 添加iron_fishbone升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 44,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 44,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 44,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 6, upgrade6);

// 添加iron_fishbone升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 52,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 52,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 52,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 7, upgrade7);

// 添加iron_fishbone升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 64,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 64,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 64,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 8, upgrade8);

// 添加iron_fishbone升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 80,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 80,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 80,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 9, upgrade9);

// 添加iron_fishbone升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 110,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 110,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 110,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 10, upgrade10);

// 添加iron_fishbone升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 140,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 140,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 140,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 11, upgrade11);

// 添加iron_fishbone升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 170,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 170,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 170,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 12, upgrade12);

// 添加iron_fishbone升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 200,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 200,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 200,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 13, upgrade13);

// 添加iron_fishbone升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 230,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 230,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 230,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 14, upgrade14);

// 添加iron_fishbone升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 260,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 260,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 260,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 15, upgrade15);

// 添加iron_fishbone升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "钢鱼刺",
		            "shape": 0,
		            "description": "钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 290,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "无座钢鱼刺",
		            "shape": 1,
		            "description": "无座钢鱼刺：伤害接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 290,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "海贼王鱼刺",
		            "shape": 2,
		            "description": "海贼王鱼刺：伤害并减速接触到的敌人，卡坏3个车辆",
		            "hp": 3600,
		            "cost": 125,
		            "atk": 290,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("iron_fishbone", 16, upgrade16);


		}
		{//注册机枪小笼包
			// 注册gatlin_long_bao
		register_plant(
		    "gatlin_long_bao",
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 10,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60
		        }
		    ]
		);

// 添加gatlin_long_bao升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 1
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 1
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 12,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 1, upgrade1);

// 添加gatlin_long_bao升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 2
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 2
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 14,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 2, upgrade2);

// 添加gatlin_long_bao升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 3
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 3
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 16,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 3, upgrade3);

// 添加gatlin_long_bao升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 4
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 4
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 18,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 4, upgrade4);

// 添加gatlin_long_bao升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 5
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 5
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 20,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 5, upgrade5);

// 添加gatlin_long_bao升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 6
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 6
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 22,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 6, upgrade6);

// 添加gatlin_long_bao升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 7
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 7
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 26,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 7, upgrade7);

// 添加gatlin_long_bao升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 8
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 8
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 32,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 8, upgrade8);

// 添加gatlin_long_bao升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 9
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 9
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 40,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 9, upgrade9);

// 添加gatlin_long_bao升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 10
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 10
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 55,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 10, upgrade10);

// 添加gatlin_long_bao升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 11
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 11
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 11, upgrade11);

// 添加gatlin_long_bao升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 12
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 12
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 85,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 12, upgrade12);

// 添加gatlin_long_bao升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 13
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 13
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 13, upgrade13);

// 添加gatlin_long_bao升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 14
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 14
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 115,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 14, upgrade14);

// 添加gatlin_long_bao升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 15
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 15
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 130,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 15, upgrade15);

// 添加gatlin_long_bao升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "机枪小笼包",
		            "shape": 0,
		            "description": "机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 16
		        },
		        {
		            "name": "竹筒机枪小笼包",
		            "shape": 1,
		            "description": "竹筒机枪小笼包：发射四发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 16
		        },
		        {
		            "name": "格林机枪笼包",
		            "shape": 2,
		            "description": "格林机枪笼包：发射六发包子",
		            "hp": 50,
		            "cost": 250,
		            "atk": 145,
		            "range": 10,
		            "cooldown": 3000,
		            "cycle": 60,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("gatlin_long_bao", 16, upgrade16);


		}
		{//注册旋转咖啡喷壶
			// 注册rotating_coffee_pot
		register_plant(
		    "rotating_coffee_pot",
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 20,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 20,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90
		        }
		    ]
		);

// 添加rotating_coffee_pot升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 24,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 1
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 24,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 1
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 48,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 1, upgrade1);

// 添加rotating_coffee_pot升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 28,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 2
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 28,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 2
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 56,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 2, upgrade2);

// 添加rotating_coffee_pot升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 32,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 3
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 32,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 3
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 64,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 3, upgrade3);

// 添加rotating_coffee_pot升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 36,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 4
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 36,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 4
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 72,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 4, upgrade4);

// 添加rotating_coffee_pot升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 5
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 40,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 5
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 80,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 5, upgrade5);

// 添加rotating_coffee_pot升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 44,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 6
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 44,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 6
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 88,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 6, upgrade6);

// 添加rotating_coffee_pot升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 52,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 7
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 52,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 7
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 104,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 7, upgrade7);

// 添加rotating_coffee_pot升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 64,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 8
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 64,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 8
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 128,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 8, upgrade8);

// 添加rotating_coffee_pot升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 80,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 9
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 80,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 9
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 160,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 9, upgrade9);

// 添加rotating_coffee_pot升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 110,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 10
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 110,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 10
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 220,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 10, upgrade10);

// 添加rotating_coffee_pot升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 140,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 11
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 140,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 11
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 280,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 11, upgrade11);

// 添加rotating_coffee_pot升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 170,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 12
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 170,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 12
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 340,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 12, upgrade12);

// 添加rotating_coffee_pot升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 200,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 13
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 200,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 13
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 400,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 13, upgrade13);

// 添加rotating_coffee_pot升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 230,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 14
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 230,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 14
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 460,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 14, upgrade14);

// 添加rotating_coffee_pot升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 260,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 15
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 260,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 15
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 520,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 15, upgrade15);

// 添加rotating_coffee_pot升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "旋转咖啡喷壶",
		            "shape": 0,
		            "description": "旋转咖啡喷壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 290,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 16
		        },
		        {
		            "name": "节能旋转咖啡壶",
		            "shape": 1,
		            "description": "节能旋转咖啡壶：3*3范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 290,
		            "range": 1,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 16
		        },
		        {
		            "name": "原子咖啡壶",
		            "shape": 2,
		            "description": "原子咖啡壶：5*5范围穿透攻击",
		            "hp": 50,
		            "cost": 150,
		            "atk": 580,
		            "range": 2,
		            "cooldown": 3000,
		            "cycle": 90,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("rotating_coffee_pot", 16, upgrade16);


		}
		{//注册章鱼烧
			// 注册takoyaki
		register_plant(
		    "takoyaki",
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 10,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 10,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 10,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180
		        }
		    ]
		);

// 添加takoyaki升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 12,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 12,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 12,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 1, upgrade1);

// 添加takoyaki升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 14,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 14,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 14,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 2, upgrade2);

// 添加takoyaki升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 16,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 16,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 16,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 3, upgrade3);

// 添加takoyaki升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 18,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 18,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 18,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 4, upgrade4);

// 添加takoyaki升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 20,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 5, upgrade5);

// 添加takoyaki升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 22,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 22,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 22,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 6, upgrade6);

// 添加takoyaki升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 26,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 26,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 26,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 7, upgrade7);

// 添加takoyaki升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 32,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 8, upgrade8);

// 添加takoyaki升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 40,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 9, upgrade9);

// 添加takoyaki升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 55,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 55,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 55,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 10, upgrade10);

// 添加takoyaki升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 70,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 70,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 70,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 11, upgrade11);

// 添加takoyaki升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 85,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 85,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 85,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 12, upgrade12);

// 添加takoyaki升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 100,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 100,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 100,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 13, upgrade13);

// 添加takoyaki升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 115,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 115,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 115,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 14, upgrade14);

// 添加takoyaki升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 130,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 130,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 130,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 15, upgrade15);

// 添加takoyaki升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "章鱼烧",
		            "shape": 0,
		            "description": "章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 145,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "两栖章鱼烧",
		            "shape": 1,
		            "description": "两栖章鱼烧：甩出两发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 145,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "火影章鱼烧",
		            "shape": 2,
		            "description": "火影章鱼烧：甩出四发追踪飞镖",
		            "hp": 50,
		            "cost": 225,
		            "atk": 145,
		            "range": 0,
		            "cooldown": 3000,
		            "cycle": 180,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("takoyaki", 16, upgrade16);


		}
		{//注册酒瓶炸弹
			// 注册wine_bottle_bomb
		register_plant(
		    "wine_bottle_bomb",
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 3000,
		            "cycle": 0
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 3000,
		            "cycle": 0
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 3000,
		            "cycle": 0
		        }
		    ]
		);

// 添加wine_bottle_bomb升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2880,
		            "cycle": 0,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 1, upgrade1);

// 添加wine_bottle_bomb升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2760,
		            "cycle": 0,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 2, upgrade2);

// 添加wine_bottle_bomb升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2640,
		            "cycle": 0,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 3, upgrade3);

// 添加wine_bottle_bomb升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2520,
		            "cycle": 0,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 4, upgrade4);

// 添加wine_bottle_bomb升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2400,
		            "cycle": 0,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 5, upgrade5);

// 添加wine_bottle_bomb升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2280,
		            "cycle": 0,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 6, upgrade6);

// 添加wine_bottle_bomb升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 2100,
		            "cycle": 0,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 7, upgrade7);

// 添加wine_bottle_bomb升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1920,
		            "cycle": 0,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 8, upgrade8);

// 添加wine_bottle_bomb升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1740,
		            "cycle": 0,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 9, upgrade9);

// 添加wine_bottle_bomb升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1560,
		            "cycle": 0,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 10, upgrade10);

// 添加wine_bottle_bomb升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1380,
		            "cycle": 0,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 11, upgrade11);

// 添加wine_bottle_bomb升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1200,
		            "cycle": 0,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 12, upgrade12);

// 添加wine_bottle_bomb升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 1020,
		            "cycle": 0,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 13, upgrade13);

// 添加wine_bottle_bomb升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 840,
		            "cycle": 0,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 14, upgrade14);

// 添加wine_bottle_bomb升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 660,
		            "cycle": 0,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 15, upgrade15);

// 添加wine_bottle_bomb升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "酒瓶炸弹",
		            "shape": 0,
		            "description": "酒瓶炸弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 125,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "高爆酒瓶弹",
		            "shape": 1,
		            "description": "高爆酒瓶弹：一行范围爆炸",
		            "hp": 20000,
		            "cost": 150,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        },
		        {
		            "name": "子母酒瓶弹",
		            "shape": 2,
		            "description": "子母酒瓶弹：一行和一列范围爆炸",
		            "hp": 20000,
		            "cost": 200,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 0,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("wine_bottle_bomb", 16, upgrade16);


		
		}
		{//注册煮蛋器投手
			// 注册egg_boiler_pult
		register_plant(
		    "egg_boiler_pult",
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 50,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 50,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 50,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180
		        }
		    ]
		);

// 添加egg_boiler_pult升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 60,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 60,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 60,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 1, upgrade1);

// 添加egg_boiler_pult升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 2, upgrade2);

// 添加egg_boiler_pult升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 80,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 80,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 80,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 3, upgrade3);

// 添加egg_boiler_pult升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 4, upgrade4);

// 添加egg_boiler_pult升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 120,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 120,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 120,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 5, upgrade5);

// 添加egg_boiler_pult升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 140,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 140,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 140,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 6, upgrade6);

// 添加egg_boiler_pult升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 170,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 170,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 170,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 7, upgrade7);

// 添加egg_boiler_pult升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 200,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 200,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 200,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 8, upgrade8);

// 添加egg_boiler_pult升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 230,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 230,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 230,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 9, upgrade9);

// 添加egg_boiler_pult升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 280,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 280,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 280,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 10, upgrade10);

// 添加egg_boiler_pult升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 360,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 360,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 360,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 11, upgrade11);

// 添加egg_boiler_pult升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 450,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 450,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 450,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 12, upgrade12);

// 添加egg_boiler_pult升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 550,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 550,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 550,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 13, upgrade13);

// 添加egg_boiler_pult升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 660,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 660,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 660,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 14, upgrade14);

// 添加egg_boiler_pult升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 780,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 780,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 780,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 15, upgrade15);

// 添加egg_boiler_pult升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "煮蛋器投手",
		            "shape": 0,
		            "description": "煮蛋器投手：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "威力煮蛋器",
		            "shape": 1,
		            "description": "威力煮蛋器：投掷范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        },
		        {
		            "name": "强袭煮蛋器",
		            "shape": 2,
		            "description": "强袭煮蛋器：投掷两颗范围溅射鸡蛋",
		            "hp": 50,
		            "cost": 250,
		            "atk": 900,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 180,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("egg_boiler_pult", 16, upgrade16);


		}
		{//注册双向水管
			// 注册double_water_pipe
		register_plant(
		    "double_water_pipe",
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 10,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 10,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 10,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78
		        }
		    ]
		);

// 添加double_water_pipe升级1
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 12,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 12,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 12,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 1
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 1, upgrade1);

// 添加double_water_pipe升级2
		var upgrade2 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 14,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 14,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 14,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 2
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 2, upgrade2);

// 添加double_water_pipe升级3
		var upgrade3 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 16,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 16,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 16,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 3
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 3, upgrade3);

// 添加double_water_pipe升级4
		var upgrade4 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 18,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 18,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 18,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 4
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 4, upgrade4);

// 添加double_water_pipe升级5
		var upgrade5 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 20,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 20,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 20,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 5
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 5, upgrade5);

// 添加double_water_pipe升级6
		var upgrade6 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 22,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 22,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 22,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 6
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 6, upgrade6);

// 添加double_water_pipe升级7
		var upgrade7 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 26,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 26,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 26,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 7
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 7, upgrade7);

// 添加double_water_pipe升级8
		var upgrade8 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 32,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 32,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 32,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 8
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 8, upgrade8);

// 添加double_water_pipe升级9
		var upgrade9 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 40,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 40,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 40,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 9
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 9, upgrade9);

// 添加double_water_pipe升级10
		var upgrade10 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 55,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 55,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 55,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 10
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 10, upgrade10);

// 添加double_water_pipe升级11
		var upgrade11 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 70,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 11
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 11, upgrade11);

// 添加double_water_pipe升级12
		var upgrade12 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 85,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 85,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 85,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 12
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 12, upgrade12);

// 添加double_water_pipe升级13
		var upgrade13 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 100,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 13
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 13, upgrade13);

// 添加double_water_pipe升级14
		var upgrade14 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 115,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 115,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 115,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 14
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 14, upgrade14);

// 添加double_water_pipe升级15
		var upgrade15 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 130,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 130,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 130,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 15
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 15, upgrade15);

// 添加double_water_pipe升级16
		var upgrade16 = create_upgrade_data(
		    [
		        {
		            "name": "双向水管",
		            "shape": 0,
		            "description": "双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 145,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "控温双向水管",
		            "shape": 1,
		            "description": "控温双向水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 145,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        },
		        {
		            "name": "合金水管",
		            "shape": 2,
		            "description": "合金水管：向前后两个方向发射水弹",
		            "hp": 50,
		            "cost": 125,
		            "atk": 145,
		            "range": 9,
		            "cooldown": 420,
		            "cycle": 78,
		            "level": 16
		        }
		    ]
		);

		add_plant_upgrade("double_water_pipe", 16, upgrade16);


		}
	}
}
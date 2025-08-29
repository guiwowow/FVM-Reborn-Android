
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
		//注册小笼包
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
		            "range": 9,   
		            "cooldown": 7*60, 
		            "cycle": 1.4*60 
		        }
		    ]
		);
	}
	{//注册土司面包及其升级
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
		            "cooldown": 30*60, 
		            "cycle": 0 
		        }
		    ]
		);
		
		var upgrade1 = create_upgrade_data(
			    [
			        {
			            "name": "土司面包",
			            "shape": 0,
			            "level": 1,
			            "description": "土司面包：阻挡敌人前进",
			            "hp": 540,   
			            "cost": 50,   
			            "atk": 0,    
			            "range": 0,   
			            "cooldown": 30*60, 
			            "cycle": 0,
			        }
			    ]
			);

			add_plant_upgrade("toast_bread", 1, upgrade1);
	}
	{//添加植物升级
		{//添加小笼包升级
			var upgrade1 = create_upgrade_data(
			    [
			        {
			            "name": "小笼包",
			            "shape": 0,
			            "level": 1,
			            "description": "小笼包：发射包子攻击敌人",
			            "hp": 50,   
			            "cost": 100,   
			            "atk": 12,    
			            "range": 9,   
			            "cooldown": 7*60, 
			            "cycle": 1.4*60,
			        }
			    ]
			);

			add_plant_upgrade("xiao_long_bao", 1, upgrade1);
		}
	}
}
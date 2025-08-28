
// 游戏初始化脚本
function cards_init(){
	{//注册植物
		// 注册小火炉
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
		            "cooldown": 7*60, 
		            "cycle": 25*60 
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,   
		            "cost": 25,   
		            "atk": 0,    
		            "range": 0,   
		            "cooldown": 7*60, 
		            "cycle": 25*60 
		        }
		    ]
		);
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
	{//添加植物升级
		{//添加小火炉升级
		var upgrade1 = create_upgrade_data(
		    [
		        {
		            "name": "小火炉",
		            "shape": 0,
		            "level": 1,
		            "description": "小火炉：生产火苗",
		            "hp": 50,   
		            "cost": 50,   
		            "atk": 0,    
		            "range": 0,   
		            "cooldown": 7*60, 
		            "cycle": 24*60,
		            "flame_produce": 25 // 添加自定义属性
		        },
		        {
		            "name": "日光炉",
		            "shape": 1,
		            "level": 1,
		            "description": "日光炉：生产火苗",
		            "hp": 50,   
		            "cost": 25,   
		            "atk": 0,    
		            "range": 0,   
		            "cooldown": 7*60, 
		            "cycle": 24*60,
		            "flame_produce": 25 // 添加自定义属性
		        }
		    ]
		);

		add_plant_upgrade("small_fire", 1, upgrade1);
		}
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
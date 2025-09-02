// ========== 用户事件0 - 初始化 ==========
// (由父对象自动调用)
// 使用注册数据初始化属性
// 使用注册数据初始化属性
var plant_data = get_plant_data(plant_id);
if (plant_data != undefined) {
    name = plant_data[? "name"];
    description = plant_data[? "description"];
	
	var card_save_data = get_card_info(plant_id)
	current_level = card_save_data.level
	skill = card_save_data.skill
	shape = card_save_data.shape
    
    // 应用基础属性
    var upgrade_data = get_plant_upgrade(plant_id, shape,current_level);
    if (upgrade_data != undefined) {
        hp = upgrade_data[? "hp"];
		max_hp = hp
        cost = upgrade_data[? "cost"];
        atk = upgrade_data[? "atk"];
        range = upgrade_data[? "range"];
        cooldown = upgrade_data[? "cooldown"];
        cycle = upgrade_data[? "cycle"];
        
        // 获取自定义属性（如果存在）
        if (ds_map_exists(upgrade_data, "flame_produce")) {
            flame_produce = upgrade_data[? "flame_produce"];
        }
    }
	
}

if current_level >= 4{ //绑定星级贴图
	var inst = instance_create_depth(x,y-5,depth-1,obj_stars)
	var star_spr = -1
	switch current_level{
		case 4:star_spr = spr_star_4;break;
		case 5:star_spr = spr_star_5;break;
		case 6:star_spr = spr_star_6;break;
		case 7:star_spr = spr_star_7;break;
		case 8:star_spr = spr_star_8;break;
		case 9:star_spr = spr_star_9;break;
		case 10:star_spr = spr_star_10;break;
		case 11:star_spr = spr_star_11;break;
		case 12:star_spr = spr_star_12;break;
		case 13:star_spr = spr_star_13;break;
		case 14:star_spr = spr_star_14;break;
		case 15:star_spr = spr_star_15;break;
		case 16:star_spr = spr_star_16;break;
	}
	inst.sprite_index = star_spr
	inst.parent_card = id
	banding_star_obj = inst.id
}
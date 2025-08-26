// ========== 用户事件0 - 初始化 ==========
// (由父对象自动调用)
// 使用注册数据初始化属性
// 使用注册数据初始化属性
var plant_data = get_plant_data(plant_id);
if (plant_data != undefined) {
    name = plant_data[? "name"];
    description = plant_data[? "description"];
    
    // 应用基础属性
    var upgrade_data = get_plant_upgrade(plant_id, current_level);
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
	inst.sprite_index = spr_star_4
	inst.parent_card = id
	banding_star_obj = inst.id
}
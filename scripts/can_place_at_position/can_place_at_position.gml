/// @function can_plant_at_position(x, y, plant_type)
/// @description 检查是否可以在指定位置种植植物
/// @param {real} x X坐标
/// @param {real} y Y坐标
/// @param {string} plant_type 植物类型
function can_place_at_position(x, y, plant_type) {
    // 获取网格位置
    var grid_pos = get_grid_position_from_world(x, y);
    var col = grid_pos.col;
    var row = grid_pos.row;
    
    // 检查是否在网格范围内
    if (col < 0 || col >= global.grid_cols || row < 0 || row >= global.grid_rows) {
        return false;
    }
    
    // 获取该网格的植物列表
    var plant_list = ds_grid_get(global.grid_plants, col, row);
    
    // 根据植物类型检查是否可以种植
    switch (plant_type) {
        case "lilypad":
            // 莲叶花盆只能种在水上且该网格必须为空
            return (global.grid_terrain[# col, row] == "water") && (ds_list_size(plant_list) == 0);
            
        case "coffee":
            // 咖啡豆只能种在普通植物上
            for (var i = 0; i < ds_list_size(plant_list); i++) {
                var plant = ds_list_find_value(plant_list, i);
                if (plant.plant_type == "normal") {
                    return true;
                }
            }
            return false;
            
        case "shield":
            // 护罩植物只能种在普通植物或莲叶上
            for (var i = 0; i < ds_list_size(plant_list); i++) {
                var plant = ds_list_find_value(plant_list, i);
                if (plant.plant_type == "normal" || plant.plant_type == "lilypad") {
                    return true;
                }
            }
            return false;
            
        case "normal":
            // 普通植物只能种在空地上或莲叶上
            if (ds_list_size(plant_list) == 0) {
                // 空地上
                //return (global.grid_terrain[# col, row] == "grass");
				return true
            } else {
                // 检查是否有莲叶
                //for (var i = 0; i < ds_list_size(plant_list); i++) {
                //    var plant = ds_list_find_value(plant_list, i);
                //    if (plant.plant_type == "lilypad") {
                //        return true;
                //    }
                //}
                return false;
            }
            
        default:
            // 其他植物类型
            return ds_list_size(plant_list) == 0;
    }
}
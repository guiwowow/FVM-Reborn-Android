function weapon_registry_init(){
	global.weapon_pool = ds_map_create()
	global.equipped_weapon = ds_map_create()
	ds_map_add(global.equipped_weapon,"main_weapon",{"weapon_id":""})
	ds_map_add(global.equipped_weapon,"secondary_weapon",{"weapon_id":""})
	ds_map_add(global.equipped_weapon,"super_weapon",{"weapon_id":""})
}

/// @function register_weapon(weapon_id,data)
/// @desc 注册新的武器
/// @param {string} weapon_id 武器ID
/// @param {struct} data 武器数据
function register_weapon(weapon_id,data){
	ds_map_add(global.weapon_pool,weapon_id,data)
}

/// @function equip_weapon(weapon_id,slot)
/// @desc 装备武器
/// @param {string} weapon_id 武器ID
/// @param {string} slot 武器槽位
function equip_weapon(weapon_id,slot){
	global.equipped_weapon[? slot].weapon_id = weapon_id
	if slot == "main_weapon"{
		global.save_data.equipped_items.main_weapon.id = weapon_id
	}
	save_file(0)
}

/// @function remove_weapon(slot)
/// @desc 卸下武器
/// @param {string} slot 武器槽位
function remove_weapon(slot){
	global.equipped_weapon[? slot].weapon_id = ""
	if slot == "main_weapon"{
		global.save_data.equipped_items.main_weapon.id = ""
	}
	save_file(0)
}

/// @function equip_gem(gem_id,slot,level)
/// @desc 装备宝石
/// @param {string} gem_id 宝石ID
/// @param {string} slot 武器槽位
/// @param {real} level 宝石等级
function equip_gem(gem_id,slot,level){
	if not struct_exists(global.equipped_weapon[? slot],gem1){
		global.equipped_weapon[? slot].gem1.gem_id = gem_id
		global.equipped_weapon[? slot].gem1.level = level
	}
	else if not struct_exists(global.equipped_weapon[? slot],gem2){
		global.equipped_weapon[? slot].gem2.gem_id = gem_id
		global.equipped_weapon[? slot].gem2.level = level
	}
	else if not struct_exists(global.equipped_weapon[? slot],gem3){
		global.equipped_weapon[? slot].gem3.gem_id = gem_id
		global.equipped_weapon[? slot].gem3.level = level
	}
	else{
		return false
	}
}

/// @function remove_gem(slot,gem_index)
/// @desc 卸下宝石
/// @param {string} slot 武器槽位
/// @param {real} gem_index 宝石索引
function remove_gem(slot,gem_index){
	if gem_index == 0{
		struct_remove(global.equipped_weapon[? slot],gem1)
	}
	else if gem_index == 1{
		struct_remove(global.equipped_weapon[? slot],gem2)
	}
	else if gem_index == 2{
		struct_remove(global.equipped_weapon[? slot],gem3)
	}
	else{
		return false
	}
}

/// @function is_weapon_equipped(weapon_id)
/// @desc 检查武器是否已装备
/// @param {string} weapon_id 武器ID
/// @return {bool} 是否已装备
function is_weapon_equipped(weapon_id) {
    return (global.save_data.equipped_items.main_weapon.id == weapon_id ||
            global.save_data.equipped_items.secondary_weapon.id == weapon_id ||
            global.save_data.equipped_items.super_weapon.id == weapon_id);
}

/// @function get_weapon_slot(weapon_id)
/// @desc 获取武器所在的槽位
/// @param {string} weapon_id 武器ID
/// @return {string} 槽位名称，如果未装备则返回空字符串
function get_weapon_slot(weapon_id) {
    if (global.save_data.equipped_items.main_weapon.id == weapon_id) {
        return "main_weapon";
    } else if (global.save_data.equipped_items.secondary_weapon.id == weapon_id) {
        return "secondary_weapon";
    } else if (global.save_data.equipped_items.super_weapon.id == weapon_id) {
        return "super_weapon";
    }
    return "";
}

/// @function get_weapon_info(weapon_id)
/// @desc 获取武器信息
/// @param {string} weapon_id 武器ID
/// @return {struct} weapon_info 武器信息结构体
function get_weapon_info(weapon_id) {
    return global.weapon_pool[? weapon_id]
}
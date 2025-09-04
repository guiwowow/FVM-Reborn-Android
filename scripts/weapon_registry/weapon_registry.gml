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
}

/// @function remove_weapon(slot)
/// @desc 卸下武器
/// @param {string} slot 武器槽位
function remove_weapon(slot){
	global.equipped_weapon[? slot].weapon_id = ""
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
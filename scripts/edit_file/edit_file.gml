/// @function unlock_card(card_id, level, shape)
/// @desc 解锁新卡片并保存存档
/// @param {string} card_id 卡片ID
/// @param {number} level 卡片等级
/// @param {number} shape 卡片转职
function unlock_card(card_id, level, shape, skill) {
    // 检查卡片是否已解锁
    for (var i = 0; i < array_length(global.save_data.unlocked_cards); i++) {
        if (global.save_data.unlocked_cards[i].id == card_id) {
            // 卡片已存在，更新等级和转职
            global.save_data.unlocked_cards[i].level = level;
            global.save_data.unlocked_cards[i].shape = shape;
			global.save_data.unlocked_cards[i].skill = skill;
            save_file(); // 立即保存
            return true;
        }
    }
    
    // 卡片未解锁，添加新卡片
    var new_card = {
        id: card_id,
        level: level,
        shape: shape
    };
    
    array_push(global.save_data.unlocked_cards, new_card);
    save_file(); // 立即保存
    return true;
}

/// @function remove_card(card_id)
/// @desc 移除已解锁的卡片并保存存档
/// @param {string} card_id 卡片ID
function remove_card(card_id) {
    for (var i = 0; i < array_length(global.save_data.unlocked_cards); i++) {
        if (global.save_data.unlocked_cards[i].id == card_id) {
            // 找到卡片，从数组中移除
            array_delete(global.save_data.unlocked_cards, i, 1);
            save_file(); // 立即保存
            return true;
        }
    }
    
    // 未找到卡片
    return false;
}

/// @function upgrade_card(card_id, levels)
/// @desc 升级卡片等级并保存存档
/// @param {string} card_id 卡片ID
/// @param {number} levels 要提升到的等级数
function upgrade_card(card_id, levels) {
    for (var i = 0; i < array_length(global.save_data.unlocked_cards); i++) {
        if (global.save_data.unlocked_cards[i].id == card_id) {
            // 找到卡片，升级等级
            global.save_data.unlocked_cards[i].level = levels;
            save_file(); // 立即保存
            return true;
        }
    }
    
    // 未找到卡片
    return false;
}

/// @function is_card_unlocked(card_id)
/// @desc 检查卡片是否已解锁
/// @param {string} card_id 卡片ID
function is_card_unlocked(card_id) {
    for (var i = 0; i < array_length(global.save_data.unlocked_cards); i++) {
        if (global.save_data.unlocked_cards[i].id == card_id) {
            return true;
        }
    }
    return false;
}

/// @function get_card_level(card_id)
/// @desc 获取卡片等级
/// @param {string} card_id 卡片ID
function get_card_level(card_id) {
    for (var i = 0; i < array_length(global.save_data.unlocked_cards); i++) {
        if (global.save_data.unlocked_cards[i].id == card_id) {
            return global.save_data.unlocked_cards[i].level;
        }
    }
    return 0; // 未解锁的卡片等级为0
}

/// @function complete_level(level_id)
/// @desc 标记关卡为已完成并保存存档
/// @param {string} level_id 关卡ID
function complete_level(level_id) {
    // 检查关卡是否已完成
    for (var i = 0; i < array_length(global.save_data.completed_levels); i++) {
        if (global.save_data.completed_levels[i] == level_id) {
            // 关卡已完成，无需重复添加
            return true;
        }
    }
    
    // 添加新完成的关卡
    array_push(global.save_data.completed_levels, level_id);
    save_file(); // 立即保存
    return true;
}

/// @function uncomplete_level(level_id)
/// @desc 取消标记关卡为已完成并保存存档
/// @param {string} level_id 关卡ID
function uncomplete_level(level_id) {
    for (var i = 0; i < array_length(global.save_data.completed_levels); i++) {
        if (global.save_data.completed_levels[i] == level_id) {
            // 找到关卡，从数组中移除
            array_delete(global.save_data.completed_levels, i, 1);
            save_file(); // 立即保存
            return true;
        }
    }
    
    // 未找到关卡
    return false;
}

/// @function is_level_completed(level_id)
/// @desc 检查关卡是否已完成
/// @param {string} level_id 关卡ID
function is_level_completed(level_id) {
    for (var i = 0; i < array_length(global.save_data.completed_levels); i++) {
        if (global.save_data.completed_levels[i] == level_id) {
            return true;
        }
    }
    return false;
}

/// @function get_completed_levels()
/// @desc 获取所有已完成的关卡列表
function get_completed_levels() {
    return global.save_data.completed_levels;
}
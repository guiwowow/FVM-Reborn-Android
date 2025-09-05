/// @function create_battle_slots()
/// @desc 根据当前卡组创建战斗卡槽
function create_battle_slots() {
    var start_x = 535;
    var y_pos = 90;
    var x_spacing = 90;
    
    for(var i = 0; i < ds_list_size(global.selected_deck); i++) {
        var deck_entry = global.selected_deck[| i];
        var card_data = deck_entry[? "data"];
        
        var inst = instance_create_depth(
            start_x + i * x_spacing, 
            y_pos, 
            -5, 
            obj_card_slot
        );
        
        inst.cost = card_data[? "cost"];
        inst.cooldown = card_data[? "cooldown"];
        inst.card_obj = card_data[? "obj"]; 
        inst.card_spr = card_data[? "sprite"];
        inst.description = card_data[? "description"];
        inst.slot_index = i + 1;
		inst.card_id = deck_entry[? "card_id"];
        inst.shape = deck_entry[? "shape"]; // 存储形态信息
		//show_debug_message("植物卡槽已生成，id：" + inst.card_id)
    }
}
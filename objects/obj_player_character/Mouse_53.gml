if not is_placed{
	var can_plant = (can_place_at_position(mouse_x, mouse_y, "normal","normal","none"));
	if can_plant{
		is_placed = true
		global.is_paused = false
		var grid_pos = get_grid_position_from_world(mouse_x,mouse_y)
		x = grid_pos.x
		y = grid_pos.y+10
		grid_row = grid_pos.row
		grid_col = grid_pos.col
		card_created(self,grid_col,grid_row)
		audio_play_sound(snd_place1,0,0)
		instance_create_depth(x,y,-2,obj_place_effect)
		var gem_index = 0
		if global.save_data.equipped_items.main_weapon.id != ""{
			var main_info = get_weapon_info(global.save_data.equipped_items.main_weapon.id)
			var main_weapon_inst = instance_create_depth(x-10,y-100,depth-1,main_info.obj)
			main_weapon_inst.parent_player = id
			main_weapon_inst.grid_row = grid_row
			main_weapon_inst.grid_col = grid_col
			cycle = main_info.cycle
			var gem_list = global.save_data.equipped_items.main_weapon.gems
			for(var i = 0 ; i < array_length(gem_list);i++){
				var gem_id = gem_list[i]
				var gem_info = get_gem_info(gem_id)
				if gem_info.obj != noone{
					instance_create_depth(390,213+gem_index*80,-500,gem_info.obj)
					gem_index++
				}
			}
		}
		if global.save_data.equipped_items.secondary_weapon.id != ""{
			var s_inst = instance_create_depth(x,y,depth,obj_player_shield)
			s_inst.parent_player = id
			s_inst.grid_row = grid_row
			s_inst.grid_col = grid_col
			var main_info = get_weapon_info(global.save_data.equipped_items.secondary_weapon.id)
			hp += main_info.hp_increase
			max_hp += main_info.hp_increase
			if get_gem_index("health_gem") != -1{
				hp += get_gem_info("health_gem").hp_increase * (get_gem_level("health_gem")+1)
				max_hp += get_gem_info("health_gem").hp_increase * (get_gem_level("health_gem")+1)
			}
		}
		if global.save_data.equipped_items.super_weapon.id != ""{
			var main_info = get_weapon_info(global.save_data.equipped_items.super_weapon.id)
			var main_weapon_inst = instance_create_depth(x-10,y-100,depth-1,main_info.obj)
			main_weapon_inst.parent_player = id
			main_weapon_inst.grid_row = grid_row
			main_weapon_inst.grid_col = grid_col
		}
	}
	
}
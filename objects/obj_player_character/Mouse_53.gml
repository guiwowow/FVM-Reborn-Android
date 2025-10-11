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
		if global.save_data.equipped_items.main_weapon.id != ""{
			var main_info = get_weapon_info(global.save_data.equipped_items.main_weapon.id)
			var main_weapon_inst = instance_create_depth(x-10,y-100,depth-1,main_info.obj)
			main_weapon_inst.parent_player = id
			main_weapon_inst.grid_row = grid_row
			main_weapon_inst.grid_col = grid_col
			cycle = main_info.cycle
		}
	}
	
}
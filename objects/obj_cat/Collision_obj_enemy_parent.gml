if state == "idle" && row == other.grid_row && (array_get_index(ignore_list,other.mouse_id) == -1){
	state = "awake"
	timer = 0
}
if state != "idle" && row == other.grid_row && other.hp > 0  && (array_get_index(ignore_list,other.mouse_id) == -1){
	with other{
		var inst = instance_create_depth(x,y,depth,obj_knock_back_effect)
		inst.sprite_index = sprite_index
		inst.image_index = image_index
		instance_destroy()
	}
}
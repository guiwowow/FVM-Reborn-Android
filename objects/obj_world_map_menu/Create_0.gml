image_xscale = 1.8
image_yscale = 1.8
instance_create_depth(x+620,y-410,depth-1,obj_world_map_close_btn)
instance_create_depth(x+15,y-160,depth-1,obj_world_map_choose_btn)
var btn = instance_create_depth(x-365,y-85,depth-1,obj_world_map_choose_btn)
btn.sprite_index = spr_world_map_delicious_land
btn.map_name = "美味岛"
btn.map_id = "delicious_island"
btn.room_target = room_map
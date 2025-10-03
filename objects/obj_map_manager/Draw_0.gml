var map_sprite = struct_get(ds_map_find_value(global.maps_map,current_map_id),"map_sprite")
draw_sprite(map_sprite,0,room_width/2,room_height/2)
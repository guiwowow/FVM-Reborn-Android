

if is_selected{

var grid_pos = get_nearest_grid_position(mouse_x, mouse_y); // 获取最近的网格位置
var is_valid = can_place_at_position(mouse_x, mouse_y, "coffee","normal","none");
if (is_valid) {
    draw_sprite_ext(spr_shovel, 0, grid_pos.x+10, grid_pos.y-55, 1.8, 1.8, 0, c_white, 0.5);
}
draw_sprite_ext(spr_shovel,0,mouse_x+50,mouse_y-50,1.8,1.8,0,c_white,1)
}
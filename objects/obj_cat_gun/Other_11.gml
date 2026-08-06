// 选卡缓时：逻辑与动画均 12 倍慢（动画驱动的攻击同步减速）
if (global.slowmo_active) {
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = 1;
} else if (image_speed != 1) {
    image_speed = 1;
}
var inst = instance_create_depth(x+40,y+50,depth-500,obj_catgun_bullet)
inst.damage = atk
inst.move_speed = 8
inst.row = grid_row
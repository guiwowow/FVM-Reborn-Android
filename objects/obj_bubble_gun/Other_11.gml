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
var inst = instance_create_depth(x+50,y+50,depth-500,obj_coffeepot_bullet)
audio_play_sound(snd_coffee_pot_attack,0,0)
inst.damage = atk
inst.move_speed = 0
inst.shape = 0
inst.row = grid_row
inst.start_col = grid_col
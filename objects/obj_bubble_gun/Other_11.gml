// 选卡缓时：逻辑与动画均 12 倍慢（保存/恢复各对象原本 image_speed，不干扰手动动画）
if (global.slowmo_active) {
    if (!variable_instance_exists(id, "__slow_base_ispeed")) __slow_base_ispeed = image_speed;
    if (global.game_frame != 0) {
        image_speed = 0;
        exit;
    }
    image_speed = __slow_base_ispeed;
} else if (variable_instance_exists(id, "__slow_base_ispeed")) {
    image_speed = __slow_base_ispeed;
}
var inst = instance_create_depth(x+50,y+50,depth-500,obj_coffeepot_bullet)
audio_play_sound(snd_coffee_pot_attack,0,0)
inst.damage = atk
inst.move_speed = 0
inst.shape = 0
inst.row = grid_row
inst.start_col = grid_col
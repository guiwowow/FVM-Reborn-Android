// 事件: 自定义事件1 (倭瓜攻击)
var target_x = x;
var target_y = y;
var has_target = false;

// 寻找最近的敌人作为目标
var nearest_enemy = noone;
var nearest_dist = 1000; // 足够大的初始距离

with (obj_normal_mouse) {
    if (health > 0) {
        var dist = point_distance(x, y, other.x, other.y);
        if (grid_row == other.grid_row && grid_col >= other.grid_col-1 && grid_col <= (other.grid_col + 1)) {
            nearest_enemy = id;
            nearest_dist = dist;
            has_target = true;
        }
    }
}

// 如果有目标敌人，移动到其头上
if (has_target) {
    target_x = nearest_enemy.x;
    target_y = nearest_enemy.y;
    // 移动到目标
    //move_towards_point(target_x, target_y, 20);
	hspeed = (target_x-x)/20
	vspeed = (target_y-45-y)/20
    alarm[0] = 20; // 设置一个短暂延迟，让倭瓜有时间移动到目标位置
} else {
    // 如果没有找到目标，立即执行攻击
    //event_perform(1);
}
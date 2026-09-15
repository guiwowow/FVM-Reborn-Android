/// @description 选卡缓时门控（B5 重构：原 492 处逐字重复的内联块收敛到这里）
///
/// 缓时激活时保持 60fps 渲染，但逻辑对象每 12 帧才推进一次：
///   · game_frame != 0 的帧 → 冻结动画（image_speed = 0），返回 true 让调用方 `exit`（跳过本帧逻辑）
///   · game_frame == 0 的帧 → 恢复原始动画速度，本帧正常跑逻辑
///   · 缓时结束后 → 把动画速度还原成进入缓时前保存的值（__slow_base_ispeed）
///
/// 调用方式（必须由调用方 exit —— 函数无法让调用者退出）：
///     if (slowmo_gate()) exit;
///
/// 返回 true = 本帧应跳过后续逻辑；false = 正常执行。
///
/// 注：必须放在 **script 资源** 里才是真全局函数；写在对象事件里会变成该实例的方法，
/// 其它对象调用会报 "Variable <obj>.slowmo_gate(...) not set before reading it"（2026-09-15 踩过）。
function slowmo_gate() {
    if (global.slowmo_active) {
        if (!variable_instance_exists(id, "__slow_base_ispeed")) {
            __slow_base_ispeed = image_speed;
        }
        if (global.game_frame != 0) {
            image_speed = 0;
            return true;
        }
        image_speed = __slow_base_ispeed;
        return false;
    }
    if (variable_instance_exists(id, "__slow_base_ispeed")) {
        image_speed = __slow_base_ispeed;
    }
    return false;
}

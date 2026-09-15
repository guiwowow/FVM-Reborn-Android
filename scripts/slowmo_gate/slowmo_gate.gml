// =====================================================================
// 选卡缓时：逻辑 1/12 + 动画按比例减速（B5 重构后集中在这里）
// =====================================================================
// 缓时期间：
//   · **逻辑**仍按 1/12 推进（只有 global.game_frame == 0 的帧跑后续逻辑）
//   · **动画**每帧都按比例播放 → 视觉流畅
//
// 动画有两种驱动方式，都要照顾到：
//   A. `image_speed` 驱动（子弹/特效等多数对象）：GM 自动推 image_index → 直接缩放 image_speed
//   B. **手动计时器**驱动（人物/卡片/敌人）：`timer++` 后按 `floor(timer/flash_speed)`
//      或 `timer < flash_speed-1` 推 image_index → 这些 timer++ 写在门控**之后**的逻辑里，
//      只在 1/12 的帧跑 ✗ → 这里在"非逻辑帧"也按比例补推 timer，动画才跟得上。
//
// 想改手感只动下面这一个数字：
//   1.0   = 动画不减速（最流畅）
//   0.5   = 动画半速
//   0.333 = 动画三分之一速
//   0.0   = 动画完全冻结（旧行为）
#macro SLOWMO_ANIM_SCALE 0.25

/// @description 选卡缓时门控（B5 重构：原 492 处逐字重复的内联块收敛到这里）
///
/// 调用方式（必须由调用方 exit —— 函数无法让调用者退出）：
///     if (slowmo_gate()) exit;
///
/// 返回 true = 本帧应跳过后续逻辑（动画已按比例推进）；false = 正常执行。
///
/// 注：必须放在 **script 资源** 里才是真全局函数；写在对象事件里会变成该实例的方法，
/// 其它对象调用会报 "Variable <obj>.slowmo_gate(...) not set before reading it"（2026-09-15 踩过）。
function slowmo_gate() {
    if (global.slowmo_active) {
        if (!variable_instance_exists(id, "__slow_base_ispeed")) {
            __slow_base_ispeed = image_speed;
        }
        // A. image_speed 驱动的动画：每帧按比例播放
        image_speed = __slow_base_ispeed * SLOWMO_ANIM_SCALE;

        if (global.game_frame != 0) {
            // 非逻辑帧：逻辑会被调用方 exit 跳过，但手动动画计时器要按比例补推
            slowmo_anim_advance();
            return true;
        }
        // 逻辑帧：正常往下跑（timer++ 在逻辑里，动画自然推进）
        return false;
    }
    if (variable_instance_exists(id, "__slow_base_ispeed")) {
        image_speed = __slow_base_ispeed;
    }
    return false;
}

/// @description 缓时"非逻辑帧"补推手动动画计时器（人物/卡片/敌人的 timer 驱动动画）。
/// 按 SLOWMO_ANIM_SCALE 累积小数，满 1 才给 timer 加 1 —— 这样 0.5 就是"两帧推一次"，
/// 动画看起来是半速，而逻辑（攻击计时、状态机）不受影响（那些帧已被 exit 跳过）。
function slowmo_anim_advance() {
    if (!variable_instance_exists(id, "__slow_anim_acc")) {
        __slow_anim_acc = 0;
    }
    __slow_anim_acc += SLOWMO_ANIM_SCALE;
    while (__slow_anim_acc >= 1) {
        __slow_anim_acc -= 1;
        if (variable_instance_exists(id, "timer")) {
            timer += 1;
        }
    }
}

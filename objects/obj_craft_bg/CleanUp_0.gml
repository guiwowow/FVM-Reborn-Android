// 防双重释放崩溃（Destroy_0 已释放过一次；YYC 安卓对失效 surface id 再 free 会崩）
if (surface_exists(card_surface))
    surface_free(card_surface)
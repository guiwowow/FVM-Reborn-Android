/// @function get_painted_grid(spr, frame_index)
/// @description 返回贴图棋盘视觉网格 {ox,oy,cw,ch}（源 PNG 实测）；未校准返回 undefined（回退逻辑网格）
/// 仅用于 PVZ 十字线高亮带的视觉贴格对齐，不影响任何放置逻辑（放置仍走 global.grid_offset_*）
/// 校准来源：pvz 校准脚本（源图边缘检测 + 原点/格距验收）；新增/修正地图后重新生成
function get_painted_grid(spr, frame_index) {
    static _tbl = undefined;
    if (_tbl == undefined) {
        _tbl = ds_map_create();
        ds_map_add(_tbl, "spr_abyss:0", [696.6, 200.5, 107.3, 112.9]);
        ds_map_add(_tbl, "spr_arctic_bay_turbulence:0", [703.5, 195.0, 107.5, 118.0]);
        ds_map_add(_tbl, "spr_bayleaf_airport_daytime:0", [695.5, 173.0, 111.5, 108.0]);
        ds_map_add(_tbl, "spr_bayleaf_airport_night:0", [695.5, 173.0, 111.5, 108.5]);
        ds_map_add(_tbl, "spr_champagne_island_land:0", [696.1, 187.3, 107.4, 119.4]);
        ds_map_add(_tbl, "spr_champagne_island_water:0", [696.0, 185.5, 109.0, 118.0]);
        ds_map_add(_tbl, "spr_charcoal_jungle_daytime:0", [695.0, 219.0, 108.0, 109.5]);
        ds_map_add(_tbl, "spr_charcoal_jungle_daytime_tower:0", [692.0, 201.5, 108.5, 113.0]);
        ds_map_add(_tbl, "spr_charcoal_jungle_night:0", [697.5, 219.0, 105.0, 109.5]);
        ds_map_add(_tbl, "spr_charcoal_jungle_night_tower:0", [714.5, 219.5, 101.0, 108.0]);
        ds_map_add(_tbl, "spr_cheese_castle:0", [685.5, 184.5, 108.0, 117.5]);
        ds_map_add(_tbl, "spr_cheese_castle:1", [687.6, 192.2, 108.1, 116.8]);
        ds_map_add(_tbl, "spr_cheese_castle:2", [687.6, 192.3, 108.0, 116.7]);
        ds_map_add(_tbl, "spr_cheese_castle:3", [687.6, 192.2, 108.0, 116.8]);
        ds_map_add(_tbl, "spr_cocoa_island_daytime:0", [680.6, 187.3, 107.7, 118.0]);
        ds_map_add(_tbl, "spr_cocoa_island_night:0", [696.5, 198.5, 107.5, 115.5]);
        ds_map_add(_tbl, "spr_cookie_island:0", [692.7, 191.7, 108.0, 115.5]);
        ds_map_add(_tbl, "spr_coral_current_daytime:0", [688.5, 200.5, 107.5, 115.0]);
        ds_map_add(_tbl, "spr_coral_current_night:0", [687.0, 200.5, 108.0, 115.0]);
        ds_map_add(_tbl, "spr_cotton_candy_sky_daytime:0", [713.0, 211.0, 108.0, 117.0]);
        ds_map_add(_tbl, "spr_cotton_candy_sky_night:0", [713.0, 210.5, 108.0, 117.0]);
        ds_map_add(_tbl, "spr_cumin_bridge_daytime:0", [690.5, 196.5, 109.0, 115.0]);
        ds_map_add(_tbl, "spr_cumin_bridge_night:0", [691.0, 194.0, 110.0, 115.0]);
        ds_map_add(_tbl, "spr_curry_island_daytime:0", [694.0, 192.0, 108.5, 114.5]);
        ds_map_add(_tbl, "spr_curry_island_night:0", [694.0, 192.0, 108.5, 114.5]);
        ds_map_add(_tbl, "spr_fennel_raft_daytime:0", [695.0, 196.0, 102.5, 115.5]);
        ds_map_add(_tbl, "spr_fennel_raft_night:0", [695.0, 223.5, 102.5, 106.5]);
        ds_map_add(_tbl, "spr_jam_tribe_daytime:0", [685.5, 201.5, 108.0, 117.0]);
        ds_map_add(_tbl, "spr_jam_tribe_night:0", [685.5, 202.0, 108.0, 117.0]);
        ds_map_add(_tbl, "spr_laurel_sky_daytime:0", [696.0, 200.0, 111.0, 113.5]);
        ds_map_add(_tbl, "spr_laurel_sky_night:0", [697.0, 200.0, 107.5, 113.5]);
        ds_map_add(_tbl, "spr_lilac_rainbow_daytime:0", [695.0, 197.0, 108.0, 124.0]);
        ds_map_add(_tbl, "spr_lilac_rainbow_night:0", [695.0, 199.5, 108.0, 123.5]);
        ds_map_add(_tbl, "spr_macchiato_port:0", [694.0, 194.7, 107.6, 116.8]);
        ds_map_add(_tbl, "spr_marinade_garden:0", [696.0, 238.5, 107.0, 104.5]);
        ds_map_add(_tbl, "spr_matcha_manor_daytime:0", [698.0, 201.0, 107.5, 114.5]);
        ds_map_add(_tbl, "spr_matcha_manor_night:0", [693.0, 205.0, 107.0, 113.5]);
        ds_map_add(_tbl, "spr_mint_beach_daytime:0", [703.1, 197.5, 106.7, 116.7]);
        ds_map_add(_tbl, "spr_mint_beach_daytime_tower:0", [704.8, 198.9, 107.1, 116.6]);
        ds_map_add(_tbl, "spr_mint_beach_night:0", [702.1, 200.1, 106.9, 116.7]);
        ds_map_add(_tbl, "spr_mint_beach_night_tower:0", [702.1, 200.3, 106.9, 116.7]);
        ds_map_add(_tbl, "spr_mousse_island:0", [697.7, 196.6, 107.7, 114.2]);
        ds_map_add(_tbl, "spr_mustard_cottage_daytime:0", [693.0, 170.0, 110.5, 121.0]);
        ds_map_add(_tbl, "spr_mustard_cottage_night:0", [693.0, 170.5, 110.5, 121.0]);
        ds_map_add(_tbl, "spr_pepper_floating_isle_daytime:0", [714.0, 237.5, 94.5, 108.0]);
        ds_map_add(_tbl, "spr_pepper_floating_isle_night:0", [699.5, 237.0, 108.5, 108.0]);
        ds_map_add(_tbl, "spr_pudding_island_daytime:0", [688.3, 191.8, 108.2, 115.2]);
        ds_map_add(_tbl, "spr_pudding_island_night:0", [688.4, 192.0, 108.1, 115.2]);
        ds_map_add(_tbl, "spr_salad_island_land:0", [698.7, 198.9, 107.1, 115.9]);
        ds_map_add(_tbl, "spr_salad_island_water:0", [696.7, 198.9, 107.2, 117.2]);
        ds_map_add(_tbl, "spr_sea_anemone_current_daytime:0", [687.0, 196.5, 108.0, 114.5]);
        ds_map_add(_tbl, "spr_sea_anemone_current_night:0", [687.0, 194.5, 108.0, 115.0]);
        ds_map_add(_tbl, "spr_snowcap_volcano:0", [687.0, 189.5, 108.0, 115.5]);
        ds_map_add(_tbl, "spr_spice_airship:0", [685.5, 197.5, 110.0, 116.0]);
        ds_map_add(_tbl, "spr_spices_central_isle:0", [664.0, 198.0, 112.5, 115.0]);
        ds_map_add(_tbl, "spr_temple:0", [693.0, 199.1, 108.7, 115.1]);
        ds_map_add(_tbl, "spr_tempura_vortex:0", [688.5, 196.0, 109.0, 115.5]);
        ds_map_add(_tbl, "spr_tuna_current:0", [690.0, 196.7, 108.9, 115.8]);
    }
    var _key = sprite_get_name(spr) + ":" + string(frame_index);
    var _e = _tbl[? _key];
    if (is_array(_e)) {
        return { ox: _e[0], oy: _e[1], cw: _e[2], ch: _e[3] };
    }
    return undefined;
}

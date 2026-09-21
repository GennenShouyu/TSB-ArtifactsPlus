#> asset:artifact/3267.chill_gale_knife/kill/2.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3267.chill_gale_knife/kill/1.trigger

# ここから先は神器側の効果の処理を書く

# 効果音
    playsound block.beacon.activate player @a ~ ~ ~ 1 1.5

# エフェクト付与
    data modify storage api: Argument.ID set value 4229
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset


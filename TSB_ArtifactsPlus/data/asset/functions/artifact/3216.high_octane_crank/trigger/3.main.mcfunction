#> asset:artifact/3216.high_octane_crank/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3216.high_octane_crank/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# 効果音等
    playsound minecraft:item.trident.hit player @a ~ ~ ~ 1 1.6
    particle minecraft:block redstone_block ~ ~1.2 ~ 0.4 0.4 0.4 0 4

# 自動回復を付与
    data modify storage api: Argument.ID set value 4206
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# スタック更新
    data modify storage asset:context Stack set value 2
    data modify storage api: Argument.Stack set value 2

# エフェクトを付与
    data modify storage api: Argument.ID set value 4205
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
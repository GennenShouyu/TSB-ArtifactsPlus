#> asset:artifact/3228.vision_of_the_past/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3228.vision_of_the_past/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# particle
    particle minecraft:lava ~ ~1 ~ 0.4 1.0 0.4 0 20

# 音
    playsound minecraft:item.flintandsteel.use player @a ~ ~ ~ 1 1
    playsound minecraft:item.firecharge.use player @a ~ ~ ~ 1 1

# エフェクトを付与
    data modify storage api: Argument.ID set value 4210
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

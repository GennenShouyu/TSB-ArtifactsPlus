#> asset:artifact/3203.seal_of_overload/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3203.seal_of_overload/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# particle
    execute positioned ~ ~1 ~ run function asset:artifact/3203.seal_of_overload/trigger/vfx

# 音
    playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 1 1
    playsound minecraft:block_end_portal_frame.fill player @a ~ ~ ~ 1 1

# エフェクトを付与
    data modify storage api: Argument.ID set value 4201
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

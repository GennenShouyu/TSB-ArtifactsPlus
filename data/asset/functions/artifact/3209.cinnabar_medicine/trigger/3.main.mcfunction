#> asset:artifact/3209.cinnabar_medicine/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3209.cinnabar_medicine/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクトを付与
    data modify storage api: Argument.ID set value 4202
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 毒を付与
    effect give @s poison 30 9 true
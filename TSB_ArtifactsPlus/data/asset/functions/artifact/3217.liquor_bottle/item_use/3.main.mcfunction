#> asset:artifact/3217.liquor_bottle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3217.liquor_bottle/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクトを付与
    data modify storage api: Argument.ID set value 4207
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 吐き気を付与
        effect give @s nausea 15 0 true
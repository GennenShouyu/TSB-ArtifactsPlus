#> asset:artifact/3242.onicha/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3242.onicha/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# エフェクトを付与
    data modify storage api: Argument.ID set value 4221
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# ジャンプ力上昇
    data modify storage api: Argument.ID set value 192
    data modify storage api: Argument.Stack set value 2
    data modify storage api: Argument.Duration set value 1800
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

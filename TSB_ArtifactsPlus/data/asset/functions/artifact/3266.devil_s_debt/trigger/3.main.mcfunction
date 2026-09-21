#> asset:artifact/3266.devil_s_debt/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3266.devil_s_debt/trigger/2.check_condition

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 効果音

# エフェクト付与
    data modify storage api: Argument.ID set value 4227
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset
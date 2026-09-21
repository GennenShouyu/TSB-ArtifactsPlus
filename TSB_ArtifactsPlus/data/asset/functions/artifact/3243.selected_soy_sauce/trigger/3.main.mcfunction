#> asset:artifact/3243.selected_soy_sauce/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3243.selected_soy_sauce/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/auto

# ここから先は神器側の効果の処理を書く

# MPを回復
    data modify storage api: Argument.Fluctuation set value 120
    function api:mp/fluctuation

# エフェクトを付与
    data modify storage api: Argument.ID set value 4222
    function api:entity/mob/effect/give
    function api:entity/mob/effect/reset

# 確率で大ダメージ
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..9
    # ダメージ実行
        execute if score $Random Temporary matches 0 run function asset:artifact/3243.selected_soy_sauce/trigger/deal_damage
    # リセット
        scoreboard players reset $Random Temporary

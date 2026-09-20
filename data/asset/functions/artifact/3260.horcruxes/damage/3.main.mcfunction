#> asset:artifact/3260.horcruxes/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3260.horcruxes/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    # function asset:artifact/common/use/hotbar

# ここから先は神器側の効果の処理を書く

# 確率で壊れる
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..3
    # 壊れる
        execute if score $Random Temporary matches 0 run function asset:artifact/common/use/hotbar
        execute if score $Random Temporary matches 0 run function asset:artifact/3260.horcruxes/trigger/dis_equip/main
        execute if score $Random Temporary matches 0 run function asset:artifact/3260.horcruxes/damage/deal_damage

#> asset:artifact/3245.double_edged_sword/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3245.double_edged_sword/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 確率でダメージ増加
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..99
    # 一撃必殺
        execute if score $Random Temporary matches 0 at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run function asset:artifact/3245.double_edged_sword/trigger/attack_increase
    # 通常攻撃（10ダメ）
        execute if score $Random Temporary matches 1..49 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/3245.double_edged_sword/trigger/attack
    # 自分が死ぬ
        execute if score $Random Temporary matches 50..99 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/3245.double_edged_sword/trigger/deal_damage

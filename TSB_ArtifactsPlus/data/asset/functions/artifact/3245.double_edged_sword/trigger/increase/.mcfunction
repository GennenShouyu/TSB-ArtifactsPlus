#> asset:artifact/3245.double_edged_sword/trigger/increase/
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

# 確変カウントの減少
    scoreboard players remove @s 1B9.BonusRound 1

# 確率でダメージ増加
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..99
    # 一撃必殺
        execute if score $Random Temporary matches 0..2 at @e[type=#lib:living,type=!player,tag=Victim,tag=!Uninterferable] run function asset:artifact/3245.double_edged_sword/trigger/critical/
    # 通常攻撃（10ダメ）
        execute if score $Random Temporary matches 3..51 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/3245.double_edged_sword/trigger/increase/attack
    # 自分にダメージ（1ハート）
        execute if score $Random Temporary matches 52..99 at @e[type=#lib:living,type=!player,tag=Victim] run function asset:artifact/3245.double_edged_sword/trigger/increase/deal_damage

    # 一撃必殺でないならカウント0で確変終了メッセージ
        execute if score @s 1B9.BonusRound matches 0 run function asset:artifact/3245.double_edged_sword/trigger/increase/message

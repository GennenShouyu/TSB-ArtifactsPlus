#> asset:artifact/3214.burnt_pan/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3214.burnt_pan/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# ダメージ
    data modify storage api: Argument.Damage set value 480
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

# 確率で回復
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..1
    # 増加
        execute if score $Random Temporary matches 0 as @s run function asset:artifact/3214.burnt_pan/trigger/recovery

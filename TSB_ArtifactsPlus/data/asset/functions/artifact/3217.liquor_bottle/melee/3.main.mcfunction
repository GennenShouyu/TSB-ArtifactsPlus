#> asset:artifact/3217.liquor_bottle/trigger/3.main
#
# 神器のメイン処理部
#
# @within function asset:artifact/3217.liquor_bottle/trigger/2.check_condition

#> Private
# @private
    #declare score_holder $Random

# 基本的な使用時の処理(MP消費や使用回数の処理など)を行う
    function asset:artifact/common/use/mainhand

# ここから先は神器側の効果の処理を書く

# 効果音
        playsound minecraft:block.glass.break player @a ~ ~ ~ 1 0.7

# ダメージ
    data modify storage api: Argument.Damage set value 480
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=Victim,distance=..10] run function api:damage/
    function api:damage/reset

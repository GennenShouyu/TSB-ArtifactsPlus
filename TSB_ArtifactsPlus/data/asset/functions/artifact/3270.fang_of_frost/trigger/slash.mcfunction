#> asset:artifact/3270.fang_of_frost/trigger/slash
#
# 神器のメイン処理部
#
# @within function asset:artifact/3270.fang_of_frost/trigger/3.main

#> Private
# @private
    #declare score_holder $Random

# 効果音
    playsound entity.wind_charge.wind_burst player @a ~ ~ ~ 1 1

# タグ付与
    execute positioned ^ ^ ^1 run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] add 1B6.Hit
    execute as @e[type=#lib:living,type=!player,tag=1B6.Hit,tag=!Uninterferable,distance=..3] positioned ^ ^ ^-100 run tag @s[type=#lib:living,type=!player,tag=1B6.Hit,tag=!Uninterferable,distance=..100] remove 1B6.Hit

# ダメージ
    data modify storage api: Argument.Damage set value 125
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "Water"
    data modify storage api: Argument.AdditionalMPHeal set value 8
    function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=1B6.Hit,tag=!Uninterferable,distance=..16] run function api:damage/
    function api:damage/reset
    execute as @e[type=#lib:living,type=!player,tag=1B6.Hit,tag=!Uninterferable,distance=..16] run effect give @s slowness 3 2 true

# vfx
    # 疑似乱数取得
        execute store result score $Random Temporary run random value 0..2
    execute if score $Random Temporary matches 0 anchored eyes run function asset:artifact/3270.fang_of_frost/trigger/vfx/slash1
    execute if score $Random Temporary matches 1 anchored eyes run function asset:artifact/3270.fang_of_frost/trigger/vfx/slash2
    execute if score $Random Temporary matches 2 anchored eyes run function asset:artifact/3270.fang_of_frost/trigger/vfx/slash3
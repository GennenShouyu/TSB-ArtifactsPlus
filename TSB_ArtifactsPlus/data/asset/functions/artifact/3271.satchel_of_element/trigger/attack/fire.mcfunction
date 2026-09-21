#> asset:artifact/3271.satchel_of_element/trigger/thunder
#
#
#
# @within function asset:artifact/3271.satchel_of_element/trigger/3.main

# 演出用
    particle minecraft:explosion ~ ~1 ~ 0.2 0.2 0.2 0 1
    particle minecraft:flame ~ ~1 ~ 0.4 1.0 0.4 0.1 20
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 0.3 1.0

# ダメージ
    data modify storage api: Argument.Damage set value 40f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Fire"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

#> asset:artifact/3271.satchel_of_element/trigger/thunder
#
#
#
# @within function asset:artifact/3271.satchel_of_element/trigger/3.main

# 演出用
    particle dust 0.7 0.8 1 1.3 ~ ~ ~ 0.5 1 0.5 0 20 normal @a
    particle block ice ~ ~1.2 ~ 0.4 0.4 0.4 0 10 normal @a
    playsound block.glass.break player @a ~ ~ ~ 1.0 1.0

# ダメージ
    data modify storage api: Argument.Damage set value 40f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Water"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

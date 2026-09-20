#> asset:artifact/3271.satchel_of_element/trigger/thunder
#
#
#
# @within function asset:artifact/3271.satchel_of_element/trigger/3.main

# 演出用
    particle dust 1 1 0.2 1.3 ~ ~4 ~ 0.1 2 0.1 0 50 normal @a
    particle wax_off ~ ~6 ~ 0.4 5 0.4 0 20 normal @a
    playsound entity.lightning_bolt.thunder player @a ~ ~ ~ 0.4 2

# ダメージ
    data modify storage api: Argument.Damage set value 40f
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

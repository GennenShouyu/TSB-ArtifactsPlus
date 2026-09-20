#> asset:artifact/3245.double_edged_sword/trigger/attack
#
# 通常攻撃
#
# @within function asset:artifact/3245.double_edged_sword/trigger/3.main

# 効果音
    playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 1
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run particle minecraft:firework ~ ~1 ~ 0.4 1.0 0.4 0.5 20

# ダメージ
    data modify storage api: Argument.Damage set value 9999
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run function api:damage/
    function api:damage/reset

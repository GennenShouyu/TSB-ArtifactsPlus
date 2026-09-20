#> asset:artifact/3204.real_knife/trigger/attack
#
# 通常攻撃
#
# @within function asset:artifact/3204.real_knife/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 99
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run function api:damage/
    function api:damage/reset

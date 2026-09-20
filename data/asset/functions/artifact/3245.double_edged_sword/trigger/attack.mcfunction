#> asset:artifact/3245.double_edged_sword/trigger/attack
#
# 通常攻撃
#
# @within function asset:artifact/3245.double_edged_sword/trigger/3.main

# ダメージ
    data modify storage api: Argument.Damage set value 10
    data modify storage api: Argument.AttackType set value "Physical"
    function api:damage/modifier
    execute as @e[type=#lib:living,tag=Victim,distance=..0.01,limit=1] run function api:damage/
    function api:damage/reset

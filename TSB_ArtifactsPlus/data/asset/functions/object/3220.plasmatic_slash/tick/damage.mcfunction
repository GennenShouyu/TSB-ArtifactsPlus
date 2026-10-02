# 演出
    particle minecraft:explosion ~ ~ ~ 1.5 1.5 1.5 0 5
    particle dust 0 1 0.949 2 ~ ~ ~ 1.5 1.5 1.5 0 30
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.7

# ダメージ
    data modify storage api: Argument.Damage set from storage asset:context this.Damage
    data modify storage api: Argument.AttackType set value "Magic"
    data modify storage api: Argument.ElementType set value "Thunder"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

# エフェクトを付与
    execute as @e[type=#lib:living,type=!player,tag=!Uninterferable,distance=..3] run function asset:object/3220.plasmatic_slash/tick/effect
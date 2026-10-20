# 爆発
    particle minecraft:explosion ~ ~ ~ 1 1 1 0 10 
    particle dust 0.8 0.1 0 1 ~ ~ ~ 1 1 1 0.1 30
    playsound minecraft:entity.generic.explode player @a ~ ~ ~ 1 0.7

# エリアダメージ
    data modify storage api: Argument.Damage set value 1300
    data modify storage api: Argument.AttackType set value "Physical"
    data modify storage api: Argument.ElementType set value "None"
    execute store result score $UserID Temporary run data get storage asset:context this.UserID
    execute as @a if score @s UserID = $UserID Temporary run function api:damage/modifier
    execute as @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..3] run function api:damage/
    function api:damage/reset

# kill
    kill @s
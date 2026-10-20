# 召喚
    data modify storage api: Argument.ID set value 3222
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Damage set value 1300
    execute positioned ~ ~ ~ rotated ~ 0 run function api:object/summon
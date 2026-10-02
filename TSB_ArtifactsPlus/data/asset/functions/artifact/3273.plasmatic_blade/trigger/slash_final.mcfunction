
# 予告線
    data modify storage api: Argument.ID set value 2113
    data modify storage api: Argument.FieldOverride.RotationX set from entity @s Rotation[0]
    data modify storage api: Argument.FieldOverride.Color set value 65522
    data modify storage api: Argument.FieldOverride.Scale set value [6f,25f]
    data modify storage api: Argument.FieldOverride.Interpolation set value 15
    data modify storage api: Argument.FieldOverride.Tick set value 30
    execute positioned ^ ^-0.75 ^ rotated ~ 0 run function api:object/summon

# 召喚
    data modify storage api: Argument.ID set value 3220
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    data modify storage api: Argument.FieldOverride.Damage set value 250
    execute positioned ~ ~0.5 ~ rotated ~ 0 run function api:object/summon
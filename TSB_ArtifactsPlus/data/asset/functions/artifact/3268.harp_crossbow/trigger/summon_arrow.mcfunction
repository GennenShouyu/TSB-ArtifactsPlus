#> asset:artifact/3268.harp_crossbow/trigger/summon_arrow
#
# 神器のメイン処理部
#
# @within function asset:artifact/3268.harp_crossbow/trigger/3.main

# ここから先は神器側の効果の処理を書く

# 矢を召喚する
    data modify storage api: Argument.ID set value 3218
    data modify storage api: Argument.FieldOverride.Damage set value 125
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

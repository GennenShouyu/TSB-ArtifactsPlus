#> asset:object/3219.arrow_of_firebolt_thrower/pre_hit/summon_arrow
#
# 神器のメイン処理部
#
# @within function asset:object/3219.arrow_of_firebolt_thrower/pre_hit/arrow
# ここから先は神器側の効果の処理を書く

# 矢を召喚する
    data modify storage api: Argument.ID set value 3219
    data modify storage api: Argument.FieldOverride.Damage set value 525
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute anchored eyes positioned ^ ^ ^ run function api:object/summon

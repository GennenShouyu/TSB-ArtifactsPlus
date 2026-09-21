#> asset:artifact/3231.valkyrie_missile/trigger/hit
#
#
#
# @within function asset:artifact/3231.valkyrie_missile/trigger/bullet

# ミサイルの目標地点を召喚
    data modify storage api: Argument.ID set value 3211
    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @s UserID
    execute positioned ~ ~1 ~ run function api:object/summon

# 着弾タグを消す
    tag @e[tag=LandingTarget] remove LandingTarget

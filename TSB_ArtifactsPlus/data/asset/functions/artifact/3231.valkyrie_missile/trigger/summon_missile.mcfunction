#> asset:artifact/3231.valkyrie_missile/trigger/bee_summon
#
#
#
# @within function asset:artifact/3231.valkyrie_missile/trigger/3.main

#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 1
    data modify storage lib: Argument.Spread set value 0.6
# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,distance=..10,limit=1] run function lib:forward_spreader/circle

# 弾を召喚
    data modify storage api: Argument.ID set value 3212
    data modify storage api: Argument.FieldOverride.Damage set value 520

    execute store result storage api: Argument.FieldOverride.UserID int 1 run scoreboard players get @p[tag=this] UserID
    execute as @s rotated ~ -90 positioned ~ ~2 ~ run function api:object/summon

# 前方拡散をキル
    kill @e[type=marker,tag=SpreadMarker,distance=..10]

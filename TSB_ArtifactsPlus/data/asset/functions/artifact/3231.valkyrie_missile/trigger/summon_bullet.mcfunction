#> asset:artifact/3231.valkyrie_missile/trigger/summon_bullet
#
# 神器のメイン処理部
#
# @within function asset:artifact/3231.valkyrie_missile/trigger/3.main
#> Private
# @private
    #declare tag SpreadMarker

# 前方拡散設定
    $execute anchored eyes positioned ^$(PosX) ^$(PosY) ^ run summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
    data modify storage lib: Argument.Distance set value 2.0
    data modify storage lib: Argument.Spread set value 0.01

# 前方拡散を実行する
    execute as @e[type=marker,tag=SpreadMarker,limit=1] run function lib:forward_spreader/circle
# 発砲
    $execute anchored eyes positioned ^$(PosX) ^$(PosY) ^ facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet run function asset:artifact/3231.valkyrie_missile/trigger/bullet

    tag @s remove Landing

# リセット
    kill @e[type=marker,tag=SpreadMarker]
    scoreboard players reset $Appropriate_Distance Temporary
    scoreboard players reset $Distance_Damping Temporary
    scoreboard players reset $MinDamage Temporary
    scoreboard players reset $Damage Temporary

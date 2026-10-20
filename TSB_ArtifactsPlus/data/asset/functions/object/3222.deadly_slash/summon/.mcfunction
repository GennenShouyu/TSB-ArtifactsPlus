#> asset:object/3220.plasmatic_slash/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3220/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/3220.plasmatic_slash/summon/macro.m with storage asset:temp Args
    data remove storage asset:temp Args

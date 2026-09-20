#> asset:object/3201.anti_mosquito_flash/summon/
#
# Object召喚処理の呼び出し時に実行されるfunction
#
# @within asset:object/alias/3201/summon

# 元となるEntityを召喚する
    execute as 0-0-0-0-0 in minecraft:overworld positioned as @s rotated ~ 0 run tp @s ~ ~ ~ ~ ~
    data modify storage asset:temp Args.Rotation set from entity 0-0-0-0-0 Rotation
    function asset:object/3201.anti_mosquito_flash/summon/macro.m with storage asset:temp Args
    data remove storage asset:temp Args

#> asset:object/3222.deadly_slash/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3222/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 20Tickで起動
    tp @s ^ ^ ^1
    function asset:object/3222.deadly_slash/tick/damage
    function asset:object/3222.deadly_slash/tick/vfx
# 前方にブロックがあるならkill
    execute rotated ~ ~0 unless block ^ ^0.5 ^1 #lib:no_collision/ run function asset:object/3222.deadly_slash/tick/kill

# 消滅処理
    execute if score @s General.Object.Tick matches 20.. run function asset:object/3222.deadly_slash/tick/kill

#> asset:object/3225.minigun_turret_interaction/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3225/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# インタラクトの検知
    execute on target run function asset:object/3225.minigun_turret_interaction/tick/ride_player

# 消滅処理
    kill @s[scores={General.Object.Tick=400..}]
# インタラクトされた場合も消滅
    execute if entity @a[tag=3275.Ride,distance=..2] run kill @s

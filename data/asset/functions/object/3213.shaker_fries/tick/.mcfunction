#> asset:object/3213.shaker_fries/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3213/tick

# パーティクル
    particle flame ~ ~ ~ 0.2 0.2 0.2 0 3 normal @a

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 雪玉消滅か時間経過で爆発
    execute unless predicate lib:is_vehicle run function asset:object/3213.shaker_fries/tick/boom
    execute if score @s General.Object.Tick matches 60.. if entity @s run function asset:object/3213.shaker_fries/tick/boom

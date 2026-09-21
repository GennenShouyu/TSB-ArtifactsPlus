#> asset:object/3214.energy_star/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3214/tick

# Tick加算
    scoreboard players add @s General.Object.Tick 1

# 敵が至近距離に入っているならタグを付与
    execute if entity @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..0.5] run tag @e[type=#lib:living,tag=Enemy,tag=!Uninterferable,distance=..0.5] add 3214.hit

# 回転
    tp @s ~ ~ ~ ~-20 ~

# 雪玉消滅か時間経過で爆発
    execute unless predicate lib:is_vehicle run function asset:object/3214.energy_star/tick/boom
    execute if score @s General.Object.Tick matches 60.. if entity @s run function asset:object/3214.energy_star/tick/boom
#> asset:effect/4234.charge_negative/tick/
#
# Effectのtick処理
#
# @within function asset:effect/4234.charge_negative/_/tick

# 演出
    execute if entity @s[tag=!Enemy.Boss] run particle minecraft:scrape ~ ~1.2 ~ 0.4 0.4 0.4 0 2
    execute if entity @s[tag=!Enemy.Boss] run particle dust 0 0.949 1 0.5 ~ ~1.2 ~ 0.4 0.4 0.4 0 2
#> asset:effect/4233.charge_positive/tick/
#
# Effectのtick処理
#
# @within function asset:effect/4233.charge_positive/_/tick

# 演出
    execute if entity @s[tag=!Enemy.Boss] run particle scrape ~ ~1.2 ~ 0.4 0.4 0.4 0 2 
    execute if entity @s[tag=!Enemy.Boss] run particle dust 0 1 0.949 0.5 ~ ~1.2 ~ 0.4 0.4 0.4 0 2
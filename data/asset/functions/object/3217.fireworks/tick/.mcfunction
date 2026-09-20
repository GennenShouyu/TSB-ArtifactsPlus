#> asset:object/3217.fireworks/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3217/tick

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0 1 force

# super 呼び出し
    execute at @s run function asset:object/super.tick

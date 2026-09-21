#> asset:object/3216.runaway_minecart/tick/
#
# Objectのtick時の処理
#
# @within asset:object/alias/3207/tick

#> Private
# @private
    #declare tag 3207.TargetCandidate
    #declare tag 3207.Target

# 演出
    particle minecraft:campfire_cosy_smoke ~ ~-0.2 ~ 0.1 0.1 0.1 0 1 force

# 運搬システム
    execute as @e[type=#lib:living,type=!player,tag=Enemy,tag=!Enemy.Boss,tag=!Uninterferable,distance=..1.5,sort=nearest,limit=1] run tag @s add 3216.bording
    tp @e[tag=3216.bording] @s


# super 呼び出し
    execute at @s run function asset:object/super.tick

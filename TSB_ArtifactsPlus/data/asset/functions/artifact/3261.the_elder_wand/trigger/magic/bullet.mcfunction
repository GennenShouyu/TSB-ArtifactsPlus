#> asset:artifact/3261.the_elder_wand/trigger/magic/bullet
#
#
#
# @within function
#       asset:artifact/3261.the_elder_wand/trigger/magic/3.main
#       asset:artifact/3261.the_elder_wand/trigger/magic/bullet

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!already_hit,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!already_hit,dx=0,limit=1] add LandingTarget

# 演出
    particle electric_spark ~ ~ ~ 0.1 0.1 0.1 0 6
    particle end_rod ~ ~ ~ 0.1 0.1 0.1 0 2

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute positioned ~-.5 ~-.5 ~-.5 as @e[type=#lib:living,type=!player,tag=!Uninterferable,tag=!already_hit,dx=0,limit=1] at @s run function asset:artifact/3261.the_elder_wand/trigger/magic/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[distance=..15] run function asset:artifact/3261.the_elder_wand/trigger/magic/bullet
# 後処理
    execute positioned ^ ^ ^0.5 if entity @s[distance=15..] run tag @e[tag=already_hit] remove already_hit
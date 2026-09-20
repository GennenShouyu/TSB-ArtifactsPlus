#> asset:artifact/3236.tank_gun/trigger/bullet
#
#
#
# @within function
#       asset:artifact/3236.tank_gun/trigger/3.main
#       asset:artifact/3236.tank_gun/trigger/bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle smoke ~ ~ ~ 0 0 0 0 1
    particle cloud ~ ~ ~ 0 0 0 0 1
    particle flame ~ ~ ~ 0.05 0.05 0.05 0 1

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/3236.tank_gun/trigger/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..50] run function asset:artifact/3236.tank_gun/trigger/bullet
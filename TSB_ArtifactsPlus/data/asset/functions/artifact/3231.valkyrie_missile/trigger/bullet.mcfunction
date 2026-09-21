#> asset:artifact/3231.valkyrie_missile/trigger/bullet
#
#
#
# @within function
#       asset:artifact/3231.valkyrie_missile/trigger/3.main
#       asset:artifact/3231.valkyrie_missile/trigger/bullet

# 着弾検知
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:artifact/3231.valkyrie_missile/trigger/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..60] run function asset:artifact/3231.valkyrie_missile/trigger/bullet
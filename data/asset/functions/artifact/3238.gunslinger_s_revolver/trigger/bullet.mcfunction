#> asset:artifact/3238.gunslinger_s_revolver/trigger/bullet
#
#
#
# @within function
#       asset:artifact/3238.gunslinger_s_revolver/trigger/3.main
#       asset:artifact/3238.gunslinger_s_revolver/trigger/bullet

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0] run tag @e[type=#lib:living,type=!player,tag=!Uninterferable,dx=0,limit=1] add LandingTarget

# 演出
    particle dust 1.0 1.0 1.0 0.5 ~ ~ ~ 0 0 0 0 6

# 距離減衰をするためにスコアを増やす
    scoreboard players add $Distance_Damping Temporary 1

# 判定
    execute if entity @s[tag=Landing] unless entity @e[tag=LandingTarget] run function asset:artifact/3238.gunslinger_s_revolver/trigger/effect_reset
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=15..] run function asset:artifact/3238.gunslinger_s_revolver/trigger/effect_reset

# 着弾
    execute if entity @s[tag=Landing] if entity @e[tag=LandingTarget] run function asset:artifact/3238.gunslinger_s_revolver/trigger/hit

# 再起
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..15] run function asset:artifact/3238.gunslinger_s_revolver/trigger/bullet
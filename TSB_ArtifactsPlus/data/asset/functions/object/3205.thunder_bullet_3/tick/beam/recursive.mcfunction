#> asset:object/3205.thunder_bullet_3/tick/beam/recursive
#
#
#
# @within function
#   asset:object/3205.thunder_bullet_3/tick/beam/
#   asset:object/3205.thunder_bullet_3/tick/beam/recursive

# 着弾検知
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0] run tag @s add Landing
    execute unless block ^ ^ ^0.5 #lib:no_collision run tag @s add Landing

# ターゲットにタグ付与
    execute positioned ~-0.5 ~-0.5 ~-0.5 as @e[type=#lib:living_without_player,tag=Enemy,tag=!Uninterferable,dx=0,sort=random,limit=1] run tag @s add LandingTarget

# 演出
    particle minecraft:dust 1 0.8 0.3 1 ~ ~ ~ 0.1 0.1 0.1 0 1
    particle minecraft:dust 1 0.6 0 1 ~ ~ ~ 0.1 0.1 0.1 0 1

# 着弾
    execute if entity @s[tag=Landing] run function asset:object/3205.thunder_bullet_3/tick/beam/hit

# 再帰
    execute positioned ^ ^ ^0.5 if entity @s[tag=!Landing,distance=..30] run function asset:object/3205.thunder_bullet_3/tick/beam/recursive

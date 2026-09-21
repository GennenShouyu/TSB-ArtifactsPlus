#> asset:object/3214.energy_star/tick/boom
#
#
#
# @within function asset:object/3214.energy_star/tick/

#> Private
# @private
    #declare tag 3214.Target
    #declare tag 3214.Already
    #declare score_holder $UserID

# スコアボード
    scoreboard players set @s 3214.hit 0

# 一度しか爆発しないように
    execute if entity @s[tag=3214.Already] run return fail
    tag @s add 3214.Already

# 演出
    particle flash ~ ~ ~ 0.4 0.4 0.4 0 10 normal @a
    particle firework ~ ~ ~ 0 0 0 0.15 40 normal @a
    particle firework ~ ~ ~ 0 0 0 0.30 40 normal @a
    particle explosion ~ ~ ~ 1.8 1.8 1.8 0 15 normal @a
    playsound entity.generic.explode neutral @a ~ ~ ~ 0.7 1

# 対象選定
# 着弾時にdistanceだとワンチャンすぐ近くの対称に当たらない可能性があるのでdxyzでも判定しておく
    execute positioned ~-0.5 ~-0.5 ~-0.5 run tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] add 3214.hit
    tag @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..2] add 3214.hit
    execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,dx=0] run scoreboard players add @s 3214.hit 1
    execute if entity @e[type=#lib:living,type=!player,tag=Enemy,tag=!Uninterferable,distance=..2] run scoreboard players add @s 3214.hit 1

# 分岐
    execute unless score @s 3214.hit matches 0 run function asset:object/3214.energy_star/tick/hit
    execute if score @s 3214.hit matches 0 run function asset:object/3214.energy_star/tick/hit_ground

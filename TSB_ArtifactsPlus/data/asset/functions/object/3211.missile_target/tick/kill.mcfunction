#> asset:object/3211.missile_target/tick/kill
#
#
#
# @within function asset:object/3211.missile_target/tick/

# 消滅
    playsound minecraft:entity.chicken.egg neutral @a ~ ~ ~ 1.5 1.2
    particle minecraft:explosion ~ ~ ~ 0 0 0 0 0
    kill @s

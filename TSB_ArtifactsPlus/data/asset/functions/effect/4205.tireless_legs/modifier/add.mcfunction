#> asset:effect/4205.tireless_legs/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4205.tireless_legs/given/

# スタックが1なら移動速度+15%
    execute if data storage asset:context {Stack:1} run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4205.Speed" 0.15 multiply

# スタックが2なら移動速度+30%
    execute if data storage asset:context {Stack:2} run attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4205.Speed" 0.30 multiply
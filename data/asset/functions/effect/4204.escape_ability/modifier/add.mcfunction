#> asset:effect/4204.escape_ability/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4204.escape_ability/given/

# 移動速度+15%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4204.Speed" 0.15 multiply

# 落下ダメージ無効化
    data modify storage api: Argument.UUID set value [I;1,3,4204,0]
    execute store result storage api: Argument.Amount double 0.8 run data get storage asset:context Stack
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/fall_resistance/add
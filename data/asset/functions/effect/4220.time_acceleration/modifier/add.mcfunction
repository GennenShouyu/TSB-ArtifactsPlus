#> asset:effect/4220.time_acceleration/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4220.time_acceleration/given/

# 最大体力-25%
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    data modify storage api: Argument.Amount set value -0.25d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add
    
# 攻撃-10%
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    data modify storage api: Argument.Amount set value -0.05d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 防御-10%
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    data modify storage api: Argument.Amount set value -0.05f
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add


# 移動速度-10%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4220.Speed" -0.05 multiply
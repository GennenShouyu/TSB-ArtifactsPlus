#> asset:effect/4201.power_of_overload/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4201.power_of_overload/given/

# 攻撃+35%
    data modify storage api: Argument.UUID set value [I;1,3,4201,0]
    data modify storage api: Argument.Amount set value 0.30
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 防御-15%
    data modify storage api: Argument.UUID set value [I;1,3,4201,0]
    data modify storage api: Argument.Amount set value -0.10
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 移動速度-25%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4201.Speed" -0.10 multiply
#> asset:effect/4201.power_of_overload/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4201.power_of_overload/end/
#   asset:effect/4201.power_of_overload/remove/

# 攻撃+35%
    data modify storage api: Argument.UUID set value [I;1,3,4201,0]
    function api:modifier/attack/base/remove

# 防御-15%
    data modify storage api: Argument.UUID set value [I;1,3,4201,0]
    function api:modifier/defense/base/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000

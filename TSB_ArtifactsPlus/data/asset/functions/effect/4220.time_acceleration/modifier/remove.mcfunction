#> asset:effect/4220.time_acceleration/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4220.time_acceleration/end/
#   asset:effect/4220.time_acceleration/remove/

# 最大体力
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    function api:modifier/max_health/remove

# 攻撃-3%
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    function api:modifier/attack/base/remove

# 防御-3%
    data modify storage api: Argument.UUID set value [I;1,3,4220,0]
    function api:modifier/defense/base/remove


# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000
#> asset:effect/4223.six_direction_good_handling/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4223.six_direction_good_handling/end/
#   asset:effect/4223.six_direction_good_handling/remove/

# MP回復+15%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    function api:modifier/mp_regen/remove

# 攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    function api:modifier/attack/base/remove

# 防御+5%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    function api:modifier/defense/base/remove

# 与回復量
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    function api:modifier/heal/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000

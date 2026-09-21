#> asset:effect/4223.six_direction_good_handling/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4223.six_direction_good_handling/given/

# MP回復+15%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    data modify storage api: Argument.Amount set value 0.15d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add

# 攻撃+5%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    data modify storage api: Argument.Amount set value 0.15d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# 防御+5%
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    data modify storage api: Argument.Amount set value 0.15d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 与回復量
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    data modify storage api: Argument.Amount set value 0.25d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/heal/add

# 移動速度+15%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4223.Speed" 0.15 multiply
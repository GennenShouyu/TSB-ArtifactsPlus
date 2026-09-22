#> asset:effect/4202.mercury_poisoning/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4202.mercury_poisoning/given/

# 攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add

# MP回復+40%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value 0.4
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add

# 防御+15%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 移動速度+15%
    attribute @s generic.movement_speed modifier add 00000001-0000-0003-0000-00cb00000000 "4202.Speed" 0.15 multiply
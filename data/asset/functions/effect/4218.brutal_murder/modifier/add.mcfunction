#> asset:effect/4218.brutal_murder/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4218.brutal_murder/given/

# 最大MP-100%
    data modify storage api: Argument.UUID set value [I;1,3,4218,0]
    data modify storage api: Argument.Amount set value -1.00d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_mp/add

# 被回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,4218,0]
    data modify storage api: Argument.Amount set value -1.00d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
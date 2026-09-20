#> asset:effect/4227.boundless_power/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4227.boundless_power/given/

# 防御+15%
    data modify storage api: Argument.UUID set value [I;1,3,4227,0]
    data modify storage api: Argument.Amount set value 0.75d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
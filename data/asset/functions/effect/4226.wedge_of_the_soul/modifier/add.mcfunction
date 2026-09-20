#> asset:effect/4226.wedge_of_the_soul/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4226.wedge_of_the_soul/given/

# 耐性+100%を付与
    data modify storage api: Argument.UUID set value [I;1,3,4226,0]
    data modify storage api: Argument.Amount set value 1.00d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
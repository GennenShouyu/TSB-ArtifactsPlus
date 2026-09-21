#> asset:effect/4207.drunk/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4207.drunk/given/

# 攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,4207,0]
    data modify storage api: Argument.Amount set value 0.15
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
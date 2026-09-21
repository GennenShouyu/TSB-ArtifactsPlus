#> asset:effect/4215.determination/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4215.determination/given/

# 攻撃+7%
    data modify storage api: Argument.UUID set value [I;1,3,4215,0]
    data modify storage api: Argument.Amount set value 0.07d
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/base/add
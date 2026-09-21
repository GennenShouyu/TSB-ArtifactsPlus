#> asset:effect/4210.mirage_of_memory/modifier/add
#
# 補正を付与する
#
# @within function asset:effect/4210.mirage_of_memory/given/

# 攻撃補正を付与(火+X%)
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    data modify storage api: Argument.Amount set value 0.2f
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/attack/fire/add

# 最大MP+25%
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    data modify storage api: Argument.Amount set value 0.25d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_mp/add

# 最大体力-20%
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    data modify storage api: Argument.Amount set value -0.20d
    data modify storage api: Argument.Operation set value "multiply_base"
    function api:modifier/max_health/add

# 防御-10%
    data modify storage api: Argument.UUID set value [I;1,3,4210,0]
    data modify storage api: Argument.Amount set value -0.10f
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add
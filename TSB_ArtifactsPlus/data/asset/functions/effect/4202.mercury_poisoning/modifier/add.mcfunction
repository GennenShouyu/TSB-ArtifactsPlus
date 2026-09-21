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

# MP回復+60%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value 0.5
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/mp_regen/add

# 防御+20%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value 0.20
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/defense/base/add

# 被回復量-25%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    data modify storage api: Argument.Amount set value -0.25
    data modify storage api: Argument.Operation set value "multiply"
    function api:modifier/receive_heal/add
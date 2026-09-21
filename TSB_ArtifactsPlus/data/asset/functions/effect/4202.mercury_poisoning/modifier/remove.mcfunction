#> asset:effect/4202.mercury_poisoning/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4202.mercury_poisoning/end/
#   asset:effect/4202.mercury_poisoning/remove/

# 攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/attack/base/remove

# MP回復+60%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/mp_regen/remove

# 防御+20%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/defense/base/remove

# 被回復量-25%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/receive_heal/remove
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

# MP回復+40%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/mp_regen/remove

# 防御+15%
    data modify storage api: Argument.UUID set value [I;1,3,4202,0]
    function api:modifier/defense/base/remove

# 移動速度
    attribute @s generic.movement_speed modifier remove 00000001-0000-0003-0000-00cb00000000
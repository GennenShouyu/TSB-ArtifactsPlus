#> asset:effect/4222.thirst/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4222.thirst/end/
#   asset:effect/4222.thirst/remove/

# 攻撃+7%
    data modify storage api: Argument.UUID set value [I;1,3,4222,0]
    function api:modifier/attack/base/remove
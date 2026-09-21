#> asset:effect/4207.drunk/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4207.drunk/end/
#   asset:effect/4207.drunk/remove/

# 攻撃+15%
    data modify storage api: Argument.UUID set value [I;1,3,4207,0]
    function api:modifier/attack/base/remove
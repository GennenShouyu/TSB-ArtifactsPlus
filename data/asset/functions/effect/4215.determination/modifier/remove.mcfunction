#> asset:effect/4215.determination/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4215.determination/end/
#   asset:effect/4215.determination/remove/

# 攻撃+7%
    data modify storage api: Argument.UUID set value [I;1,3,4215,0]
    function api:modifier/attack/base/remove
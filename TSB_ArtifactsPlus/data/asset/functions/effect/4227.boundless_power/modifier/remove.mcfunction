#> asset:effect/4227.boundless_power/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4227.boundless_power/end/
#   asset:effect/4227.boundless_power/remove/

# 防御+75%
    data modify storage api: Argument.UUID set value [I;1,3,4227,0]
    function api:modifier/defense/base/remove
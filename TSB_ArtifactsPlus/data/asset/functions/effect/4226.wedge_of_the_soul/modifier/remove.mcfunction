#> asset:effect/4226.wedge_of_the_soul/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4226.wedge_of_the_soul/end/
#   asset:effect/4226.wedge_of_the_soul/remove/

# 耐性+100%を付与
    data modify storage api: Argument.UUID set value [I;1,3,4226,0]
    function api:modifier/defense/base/remove
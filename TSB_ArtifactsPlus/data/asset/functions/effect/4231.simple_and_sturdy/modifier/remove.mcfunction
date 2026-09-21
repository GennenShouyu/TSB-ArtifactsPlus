#> asset:effect/4231.simple_and_sturdy/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4231.simple_and_sturdy/end/
#   asset:effect/4231.simple_and_sturdy/remove/

# 防御
    data modify storage api: Argument.UUID set value [I;1,3,4231,0]
    function api:modifier/defense/base/remove
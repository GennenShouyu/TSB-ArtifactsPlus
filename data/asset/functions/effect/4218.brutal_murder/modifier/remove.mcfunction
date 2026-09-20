#> asset:effect/4218.brutal_murder/modifier/remove
#
# 補正を削除する
#
# @within function
#   asset:effect/4218.brutal_murder/end/
#   asset:effect/4218.brutal_murder/remove/

# 最大MP
    data modify storage api: Argument.UUID set value [I;1,3,4218,0]
    function api:modifier/max_mp/remove

# 被回復量-100%
    data modify storage api: Argument.UUID set value [I;1,3,4218,0]
    function api:modifier/receive_heal/remove
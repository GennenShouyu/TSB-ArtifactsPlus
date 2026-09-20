#> asset:effect/4223.six_direction_good_handling/barrier/remove
#
#
#
# @within function
#   asset:effect/4223.six_direction_good_handling/end/
#   asset:effect/4223.six_direction_good_handling/re-given/
#   asset:effect/4223.six_direction_good_handling/remove/

# バリアを削除する
    data modify storage api: Argument.UUID set value [I;1,3,4223,0]
    function api:entity/player/absorption/remove
